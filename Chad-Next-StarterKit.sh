#!/bin/bash
:<<'END'
copy shell file and open terminal same directory
sh ./create-next-app-shell.sh
just type your project name
will run create-next-app and setup prettier and eslint with airbnb code convention
END
echo "Init Next App With chad's shell"
echo "Enter your project name(do not type uppercase)"
read projectName

yarn create next-app --typescript "$projectName"
cd "$projectName"
yarn add -D eslint-config-prettier eslint-plugin-prettier @typescript-eslint/eslint-plugin eslint prettier @typescript-eslint/parser eslint-config-airbnb
yarn add --dev typescript eslint@8.2.0 eslint-plugin-import@2.25.3 eslint-plugin-jsx-a11y@6.5.1 eslint-plugin-react@7.28.0 eslint-plugin-react-hooks@4.3.0
yarn add framer-motion @emotion/styled @emotion/react axios react-query@3.39.2 @next/bundle-analyzer
echo "{" > .eslintrc.json
echo  "\"extends\": [" >> .eslintrc.json
echo  "  \"airbnb\"," >> .eslintrc.json
echo  "  \"plugin:prettier/recommended\"," >> .eslintrc.json
echo  "  \"plugin:@typescript-eslint/eslint-recommended\"," >> .eslintrc.json
echo  "  \"plugin:@typescript-eslint/recommended\"," >> .eslintrc.json
echo  "  \"next/core-web-vitals\"" >> .eslintrc.json
echo  "]," >> .eslintrc.json
echo  "\"rules\": {" >> .eslintrc.json
echo  "  \"react/jsx-filename-extension\": [" >> .eslintrc.json
echo  "    2," >> .eslintrc.json
echo  "    { \"extensions\": [\".js\", \".jsx\", \".ts\", \".tsx\"] }" >> .eslintrc.json
echo  "  ]," >> .eslintrc.json
echo  "  \"react/function-component-definition\": [" >> .eslintrc.json
echo  "    2," >> .eslintrc.json
echo  "    {" >> .eslintrc.json
echo  "      \"namedComponents\": \"arrow-function\"," >> .eslintrc.json
echo  "      \"unnamedComponents\": \"arrow-function\"" >> .eslintrc.json
echo  "    }" >> .eslintrc.json
echo  "  ]," >> .eslintrc.json
echo  "  \"prettier/prettier\": [\"error\"]," >> .eslintrc.json
echo  "  \"react/jsx-props-no-spreading\": \"off\"," >> .eslintrc.json
echo  "  \"no-unused-vars\": \"off\"," >> .eslintrc.json
echo  "  \"@typescript-eslint/no-unused-vars\": [\"error\"]," >> .eslintrc.json
echo  "  \"import/no-extraneous-dependencies\": \"off\"," >> .eslintrc.json
echo  "  \"react/no-unused-prop-types\": \"off\"," >> .eslintrc.json
echo  "  \"react/require-default-props\": \"off\"" >> .eslintrc.json
echo  "}" >> .eslintrc.json
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

echo import \'../styles/globals.css\'\; > ./pages/_app.tsx
echo "import type { AppProps } from 'next/app';" >> ./pages/_app.tsx
echo "import { Hydrate, QueryClient, QueryClientProvider } from 'react-query';" >> ./pages/_app.tsx
echo "import { ReactQueryDevtools } from 'react-query/devtools';" >> ./pages/_app.tsx
echo "import { useRef } from 'react';" >> ./pages/_app.tsx
echo "" >> ./pages/_app.tsx
echo "const App = ({ Component, pageProps }: AppProps) => {" >> ./pages/_app.tsx
echo "  const queryClientRef = useRef<QueryClient>();" >> ./pages/_app.tsx
echo "  if (!queryClientRef.current) {" >> ./pages/_app.tsx
echo "    const queryClient = new QueryClient({" >> ./pages/_app.tsx
echo "      defaultOptions: { queries: { refetchOnWindowFocus: false } }," >> ./pages/_app.tsx
echo "    });" >> ./pages/_app.tsx
echo "    queryClientRef.current = queryClient;" >> ./pages/_app.tsx
echo "  }" >> ./pages/_app.tsx
echo "" >> ./pages/_app.tsx
echo "  return (" >> ./pages/_app.tsx
echo "    <QueryClientProvider client={queryClientRef.current}>" >> ./pages/_app.tsx
echo "      <Hydrate state={pageProps.dehydratedState}>" >> ./pages/_app.tsx
echo "        <Component {...pageProps} />" >> ./pages/_app.tsx
echo "        <ReactQueryDevtools />" >> ./pages/_app.tsx
echo "      </Hydrate>" >> ./pages/_app.tsx
echo "    </QueryClientProvider>" >> ./pages/_app.tsx
echo "  );" >> ./pages/_app.tsx
echo "};" >> ./pages/_app.tsx
echo "" >> ./pages/_app.tsx
echo "export default App;" >> ./pages/_app.tsx


echo "import type { NextPage } from 'next';" > ./pages/index.tsx
echo "import Head from 'next/head';" >> ./pages/index.tsx
echo "" >> ./pages/index.tsx
echo "const Home: NextPage = () => {" >> ./pages/index.tsx
echo "  return (" >> ./pages/index.tsx
echo "    <div>" >> ./pages/index.tsx
echo "      <Head>" >> ./pages/index.tsx
echo "        <title>My Next App</title>" >> ./pages/index.tsx
echo "        <link rel=\"icon\" href=\"/favicon.ico\" />" >> ./pages/index.tsx
echo "      </Head>" >> ./pages/index.tsx
echo "" >> ./pages/index.tsx
echo "      <main>" >> ./pages/index.tsx
echo "        <h1>My Next App</h1>" >> ./pages/index.tsx
echo "      </main>" >> ./pages/index.tsx
echo "      <footer>" >> ./pages/index.tsx
echo "        <span>Footer</span>" >> ./pages/index.tsx
echo "      </footer>" >> ./pages/index.tsx
echo "    </div>" >> ./pages/index.tsx
echo "  );" >> ./pages/index.tsx
echo "};" >> ./pages/index.tsx
echo "" >> ./pages/index.tsx
echo "export default Home;" >> ./pages/index.tsx

rm -rf ./pages/api
rm -rf ./styles/Home.module.css

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
echo "      \"@components/*\": [\"src/components/*\"]," >> tsconfig.json
echo "      \"@layouts/*\": [\"src/layouts/*\"]," >> tsconfig.json
echo "      \"@pages/*\": [\"src/pages/*\"]," >> tsconfig.json
echo "      \"@public/*\": [\"public/*\"]," >> tsconfig.json
echo "      \"@styles/*\": [\"src/styles/*\"]," >> tsconfig.json
echo "      \"@utils/*\": [\"src/utils/*\"]," >> tsconfig.json
echo "      \"@hooks/*\": [\"src/hooks/*\"]," >> tsconfig.json
echo "      \"@typings/*\": [\"src/typings/*\"]," >> tsconfig.json
echo "    }" >> tsconfig.json
echo "  }," >> tsconfig.json
echo "  \"include\": [\"next-env.d.ts\", \"**/*.ts\", \"**/*.tsx\"]," >> tsconfig.json
echo "  \"exclude\": [\"node_modules\"]" >> tsconfig.json
echo "}" >> tsconfig.json

echo "/* eslint-disable @typescript-eslint/no-var-requires */" > next.config.js
echo "const withBundleAnalyzer = require('@next/bundle-analyzer')({" >> next.config.js
echo "  enabled: process.env.ANALYZE === 'true'," >> next.config.js
echo "});" >> next.config.js
echo "" >> next.config.js
echo "const nextConfig = {" >> next.config.js
echo "  reactStrictMode: false," >> next.config.js
echo "  swcMinify: true," >> next.config.js
echo "  i18n: {" >> next.config.js
echo "    locales: ['en', 'ko']," >> next.config.js
echo "    defaultLocale: 'ko'," >> next.config.js
echo "  }," >> next.config.js
echo "  compress: true," >> next.config.js
echo "  productionBrowserSourceMaps: false," >> next.config.js
echo "};" >> next.config.js
echo "" >> next.config.js
echo "module.exports = withBundleAnalyzer({" >> next.config.js
echo "  ...nextConfig," >> next.config.js
echo "  webpack(config) {" >> next.config.js
echo "    const prod = process.env.NODE_ENV === 'production';" >> next.config.js
echo "    return {" >> next.config.js
echo "      ...config," >> next.config.js
echo "      mode: prod ? 'production' : 'development'," >> next.config.js
echo "      devtool: prod ? 'hidden-source-map' : 'eval-source-map'," >> next.config.js
echo "    };" >> next.config.js
echo "  }," >> next.config.js
echo "});" >> next.config.js


mkdir components
mkdir layouts
mkdir utils
mkdir hooks
mkdir typings

mkdir src

mv -f ./components ./src
mv -f ./layouts ./src
mv -f ./pages ./src
mv -f ./styles ./src
mv -f ./utils ./src
mv -f ./hooks ./src
mv -f ./typings ./src

echo "# My $projectName App" > README.md

commitMessage="Re-Initialize With chad's shell by $USER@$(hostname -s) at $(date)"
GIT=`which git`
REPO_DIR=~/org
cd ${REPO_DIR}
${GIT} add --all .
${GIT} commit --allow-empty -m "$commitMessage"
