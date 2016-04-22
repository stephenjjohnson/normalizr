context("Overall")

test_that("Normalize works", {
        expect_equal(normalize(0:10), c(0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0))
        expect_equal(normalize(0:10, maxNorm = 100), c(0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100))
        expect_equal(normalize(0:10, minNorm = 100, maxNorm = 0), c(100, 90, 80, 70, 60, 50, 40, 30, 20, 10, 0))
        expect_equal(normalize(0:10, minData = 0, maxData = 5), c(0.0, 0.2, 0.4, 0.6, 0.8, 1.0, 1.2, 1.4, 1.6, 1.8, 2.0))
        expect_equal(normalize(0:10, minNorm = -1, maxNorm = 1), c(-1.0, -0.8, -0.6, -0.4, -0.2, 0.0, 0.2, 0.4, 0.6, 0.8, 1.0))
})
