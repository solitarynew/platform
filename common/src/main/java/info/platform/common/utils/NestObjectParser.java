package info.platform.common.utils;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class NestObjectParser {

    static public Object parse(Map<String, Object> objectMap, List<String> paths) {;
        Object obj = objectMap;
        for (int i = 0; i < paths.size(); i++) {
            if (obj instanceof Map) {
                obj = ((Map<?, ?>) obj).get(paths.get(i));
            } else if (obj instanceof List) {
                List<Object> list = new ArrayList<>();
                for (Object o : (List<?>) obj) {
                    Object o1 = parse((Map<String, Object>) o, paths.subList(i, paths.size()));
                    list.add(o1);
                }
                return list;
            } else {
                return null;
            }
        }
        return obj;
    }

    static public Map<String, Object> parseGraphqlVariables(Map<String, Object> variables, String graphql) {
        ArrayList<String> variablesNames = new ArrayList<>();
        // $与:之间的字符串
        String regex = "\\$([a-zA-Z0-9_]+):";
        java.util.regex.Pattern pattern = java.util.regex.Pattern.compile(regex);
        java.util.regex.Matcher matcher = pattern.matcher(graphql);
        while (matcher.find()) {
            variablesNames.add(matcher.group(1));
        }
        Map<String, Object> result = new java.util.HashMap<>();
        for (String variablesName : variablesNames) {
            result.put(variablesName, parse(variables, java.util.Arrays.asList(variablesName.split("_"))));
        }
        return result;
    }
}
