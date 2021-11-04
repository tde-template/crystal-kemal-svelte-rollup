module.exports = {
    verbose: true,
    moduleFileExtensions: ['js', 'ts', 'svelte'],
    transform: {
        '^.+\\.svelte$': 'svelte-jester',
        '^.+\\.ts$': 'ts-jest',
        '^.+\\.js$': 'babel-jest',
        '.*\\.(css|styl|less|sass|scss|png|jpg|ttf|woff|woff2)$': 'jest-transform-stub'
    },
    transformIgnorePatterns: [
        '/node_modules/'
    ],
    collectCoverage: true,
    collectCoverageFrom: ['src/**/*.{svelte,js,ts}', '!**/node_modules/**'],
    coverageReporters: ['cobertura', 'lcov'],
    testResultsProcessor: "jest-sonar-reporter"
}