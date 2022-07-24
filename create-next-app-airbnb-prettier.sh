#!/bin/bash
:<<'END'
copy shell file and open terminal same directory
sh ./create-next-app-shell.sh
just type your project name
will run create-next-app and setup prettier and eslint with airbnb code convention
END
echo "Enter your project name(do not type uppercase)"
read projectName

yarn create next-app --typescript "$projectName"
cd "$projectName"
npx install-peerdeps --dev eslint-config-airbnb -n
rm package-lock.json
yarn add --dev eslint prettier
yarn add --dev eslint-config-prettier eslint-plugin-prettier
yarn add --dev @typescript-eslint/eslint-plugin

echo "{" > .eslintrc.json
echo "  \"extends\": [\"airbnb\", \"plugin:prettier/recommended\", \"next/core-web-vitals\"]," >> .eslintrc.json
echo "  \"rules\": {" >> .eslintrc.json
echo "    \"react/jsx-filename-extension\": [2, { \"extensions\": [\".js\", \".jsx\", \".ts\", \".tsx\"] }]," >> .eslintrc.json
echo "    \"react/function-component-definition\": [" >> .eslintrc.json
echo "      2," >> .eslintrc.json
echo "      { \"namedComponents\": \"arrow-function\", \"unnamedComponents\": \"arrow-function\" }" >> .eslintrc.json
echo "    ]," >> .eslintrc.json
echo "    \"prettier/prettier\": [\"error\"]," >> .eslintrc.json
echo "    \"react/jsx-props-no-spreading\": \"off\"," >> .eslintrc.json
echo "    \"no-unused-vars\": \"off\"," >> .eslintrc.json
echo "    \"@typescript-eslint/no-unused-vars\": [\"error\"]," >> .eslintrc.json
echo "    \"arrow-body-style\": [\"error\", \"as-needed\"]" >> .eslintrc.json
echo "  }," >> .eslintrc.json
echo "  \"plugins\": [\"@typescript-eslint\"]" >> .eslintrc.json
echo "}" >> .eslintrc.json

echo "{" > .prettierrc.json
echo "  \"printWidth\": 120," >> .prettierrc.json
echo "  \"semi\": true," >> .prettierrc.json
echo "  \"singleQuote\": true," >> .prettierrc.json
echo "  \"trailingComma\": \"all\"," >> .prettierrc.json
echo "  \"tabWidth\": 2," >> .prettierrc.json
echo "  \"bracketSpacing\": true," >> .prettierrc.json
echo "  \"endOfLine\": \"auto\"," >> .prettierrc.json
echo "  \"useTabs\": false" >> .prettierrc.json
echo "}" >> .prettierrc.json

rm -rf ./pages/api
rm ./styles/Home.module.css

echo import \'../styles/globals.css\'\; > ./pages/_app.tsx
echo import type \{ AppProps \} from \'next/app\'\; >> ./pages/_app.tsx
echo >> ./pages/_app.tsx
echo "const App = ({ Component, pageProps }: AppProps) => <Component {...pageProps} />;" >> ./pages/_app.tsx
echo >> ./pages/_app.tsx
echo "export default App;" >> ./pages/_app.tsx[]


echo "import type { NextPage } from 'next';" > ./pages/index.tsx
echo "import Head from 'next/head';" >> ./pages/index.tsx
echo "" >> ./pages/index.tsx
echo "const Home: NextPage = () => (" >> ./pages/index.tsx
echo "  <main>" >> ./pages/index.tsx
echo "    <Head>" >> ./pages/index.tsx
echo "      <title>This is Next App</title>" >> ./pages/index.tsx
echo "    </Head>" >> ./pages/index.tsx
echo "    <section>" >> ./pages/index.tsx
echo "      <h1>This is Section Title</h1>" >> ./pages/index.tsx
echo "      <div>" >> ./pages/index.tsx
echo "        <p>This is Child</p>" >> ./pages/index.tsx
echo "      </div>" >> ./pages/index.tsx
echo "    </section>" >> ./pages/index.tsx
echo "  </main>" >> ./pages/index.tsx
echo ");" >> ./pages/index.tsx
echo "" >> ./pages/index.tsx
echo "export default Home;" >> ./pages/index.tsx

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

echo "# My $projectName App" > README.md
