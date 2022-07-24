npx install-peerdeps --dev eslint-config-airbnb
yarn add --dev eslint-config-prettier eslint-plugin-prettier
yarn add --dev @typescript-eslint/eslint-plugin

echo "{" > .eslintrc.json
echo "  \"extends\": [\"airbnb\", \"plugin:prettier/recommended\", \"next/core-web-vitals\"]," >> .eslintrc.json
echo "  \"rules\": {" >> .eslintrc.json
echo "    \"react/jsx-filename-extension\": [" >> .eslintrc.json
echo "      2," >> .eslintrc.json
echo "      { \"extensions\": [\".js\", \".jsx\", \".ts\", \".tsx\"] }" >> .eslintrc.json
echo "    ]," >> .eslintrc.json
echo "    \"react/function-component-definition\": [" >> .eslintrc.json
echo "      2," >> .eslintrc.json
echo "      {" >> .eslintrc.json
echo "        \"namedComponents\": \"arrow-function\"," >> .eslintrc.json
echo "        \"unnamedComponents\": \"arrow-function\"" >> .eslintrc.json
echo "      }" >> .eslintrc.json
echo "    ]," >> .eslintrc.json
echo "    \"prettier/prettier\": [\"error\"]," >> .eslintrc.json
echo "    \"react/jsx-props-no-spreading\": \"off\"," >> .eslintrc.json
echo "    \"no-unused-vars\": \"off\"," >> .eslintrc.json
echo "    \"@typescript-eslint/no-unused-vars\": [\"error\"]" >> .eslintrc.json

echo "  }" >> .eslintrc.json
echo "}" >> .eslintrc.json

echo "{" > .prettierrc.json
echo "  \"printWidth\": 80," >> .prettierrc.json
echo "  \"semi\": true," >> .prettierrc.json
echo "  \"singleQuote\": true," >> .prettierrc.json
echo "  \"trailingComma\": \"all\"," >> .prettierrc.json
echo "  \"tabWidth\": 2," >> .prettierrc.json
echo "  \"bracketSpacing\": true," >> .prettierrc.json
echo "  \"endOfLine\": \"auto\"," >> .prettierrc.json
echo "  \"useTabs\": false" >> .prettierrc.json
echo "}" >> .prettierrc.json

echo "{" > tsconfig.json
echo "  \"compilerOptions\": {" >> tsconfig.json
echo "    \"target\": \"es5\"," >> tsconfig.json
echo "    \"lib\": [\"dom\", \"dom.iterable\", \"esnext\"]," >> tsconfig.json
echo "    \"allowJs\": true," >> tsconfig.json
echo "    \"skipLibCheck\": true," >> tsconfig.json
echo "    \"strict\": true," >> tsconfig.json
echo "    \"forceConsistentCasingInFileNames\": true," >> tsconfig.json
echo "    \"noEmit\": true," >> tsconfig.json
echo "    \"esModuleInterop\": true," >> tsconfig.json
echo "    \"module\": \"esnext\"," >> tsconfig.json
echo "    \"moduleResolution\": \"node\"," >> tsconfig.json
echo "    \"resolveJsonModule\": true," >> tsconfig.json
echo "    \"isolatedModules\": true," >> tsconfig.json
echo "    \"jsx\": \"preserve\"," >> tsconfig.json
echo "    \"incremental\": true," >> tsconfig.json
echo "    \"baseUrl\": \".\"," >> tsconfig.json
echo "    \"paths\": {" >> tsconfig.json
echo "      \"@components/*\": [\"components/*\"]," >> tsconfig.json
echo "      \"@layouts/*\": [\"layouts/*\"]," >> tsconfig.json
echo "      \"@pages/*\": [\"pages/*\"]," >> tsconfig.json
echo "      \"@public/*\": [\"public/*\"]," >> tsconfig.json
echo "      \"@styles/*\": [\"styles/*\"]," >> tsconfig.json
echo "      \"@utils/*\": [\"utils/*\"]," >> tsconfig.json
echo "      \"@hooks/*\": [\"hooks/*\"]," >> tsconfig.json
echo "      \"@typings/*\": [\"typings/*\"]" >> tsconfig.json
echo "    }" >> tsconfig.json
echo "  }," >> tsconfig.json
echo "  \"include\": [\"next-env.d.ts\", \"**/*.ts\", \"**/*.tsx\"]," >> tsconfig.json
echo "  \"exclude\": [\"node_modules\"]" >> tsconfig.json
echo "}" >> tsconfig.json

mkdir components
mkdir layouts
mkdir utils
mkdir hooks
mkdir typings

rm package.json

yarn

echo "# My $projectName App" > README.md

