#include <gtest/gtest.h>
#include "../src/add_me.h"

// Test cases
TEST(AddMeTest, PositiveNumbers) {
    EXPECT_EQ(add_me(1, 2), 3);
}

TEST(AddMeTest, NegativeNumbers) {
    EXPECT_EQ(add_me(-1, -2), -3);
}

TEST(AddMeTest, MixedNumbers) {
    EXPECT_EQ(add_me(-1, 2), 1);
}

TEST(AddMeTest, Zero) {
    EXPECT_EQ(add_me(0, 0), 0);
}

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
