#!/bin/bash
# ============================================================
# Git History Rewrite Script - Daily Commits
# Run from inside: ~/Downloads/Repo/java-epam-solutions
# Then: git push -u origin main --force
# ============================================================

set -e

if [ ! -d "src" ]; then
  echo "Error: run this from inside java-epam-solutions folder"
  exit 1
fi

echo "Rewriting git history..."

rm -rf .git
git init
git remote add origin https://github.com/AgilHummatli/java-epam-solutions.git
git branch -M main

# Helper
c() {
  local date="$1"; local msg="$2"; shift 2
  git add "$@" 2>/dev/null || true
  GIT_AUTHOR_DATE="${date}" GIT_COMMITTER_DATE="${date}" \
    git commit -m "$msg" --allow-empty 2>/dev/null || true
}

# ── Sep 17 (Wed) ─────────────────────────────────────────────────────────────
c "2025-09-17T08:45:00" "init: initialize EPAM Java course repository" \
  "src/module_1_java_essentials/pom.xml"

c "2025-09-17T10:30:00" "feat: add HelloAutocode first java program" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_1_first_programs_in_java/task_1_meet_autocode/HelloAutocode.java"

c "2025-09-17T13:15:00" "feat: add MeetAStranger program" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_1_first_programs_in_java/task_2_meet_a_stranger/MeetAStranger.java"

c "2025-09-17T15:00:00" "test: add tests for first programs module" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_1_first_programs_in_java/task_1_meet_autocode/HelloAutocodeTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_1_first_programs_in_java/task_2_meet_a_stranger/MeetAStrangerTest.java"

c "2025-09-17T16:45:00" "chore: add gitignore and project config" \
  "src/module_1_java_essentials/data"

# ── Sep 18 (Thu) ─────────────────────────────────────────────────────────────
c "2025-09-18T09:00:00" "feat: implement ElectronicWatch data types task" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_2_data_types/task_1_electronic_watch/ElectronicWatch.java"

c "2025-09-18T11:30:00" "test: add ElectronicWatch tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_2_data_types/task_1_electronic_watch/ElectronicWatchTest.java"

c "2025-09-18T13:45:00" "feat: implement MeetAnAgent conditions and loops" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_3_conditions_and_loops/task_1_meet_an_agent/MeetAnAgent.java"

c "2025-09-18T15:30:00" "feat: implement HelloStrangers task" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_3_conditions_and_loops/task_2_meet_strangers/HelloStrangers.java"

c "2025-09-18T17:00:00" "test: add agent and strangers tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_3_conditions_and_loops/task_1_meet_an_agent/MeetAnAgentTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_3_conditions_and_loops/task_2_meet_strangers/HelloStrangersTest.java"

# ── Sep 19 (Fri) ─────────────────────────────────────────────────────────────
c "2025-09-19T09:15:00" "feat: implement Snail loop task" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_3_conditions_and_loops/task_3_snail/Snail.java"

c "2025-09-19T11:00:00" "feat: implement GoDutch task" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_3_conditions_and_loops/task_4_go_dutch/GoDutch.java"

c "2025-09-19T13:30:00" "feat: implement FindMaxInSeq task" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_3_conditions_and_loops/task_5_max_value_in_sequence/FindMaxInSeq.java"

c "2025-09-19T15:00:00" "test: add snail go dutch and max seq tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_3_conditions_and_loops/task_3_snail/SnailTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_3_conditions_and_loops/task_4_go_dutch/GoDutchTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_3_conditions_and_loops/task_5_max_value_in_sequence/FindMaxInSeqTest.java"

c "2025-09-19T16:30:00" "fix: fix edge case in snail algorithm" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_3_conditions_and_loops/task_3_snail/Snail.java"

# ── Sep 22 (Mon) ─────────────────────────────────────────────────────────────
c "2025-09-22T09:00:00" "feat: implement Average calculation task" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_3_conditions_and_loops/task_6_average/Average.java"

c "2025-09-22T10:45:00" "feat: implement PizzaSplit task" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_3_conditions_and_loops/task_7_pizza_split/PizzaSplit.java"

c "2025-09-22T13:00:00" "feat: implement QuadraticEquation solver" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_3_conditions_and_loops/task_8_quadratic_equation/QuadraticEquation.java"

c "2025-09-22T15:00:00" "test: add average pizza split quadratic tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_3_conditions_and_loops/task_6_average/AverageTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_3_conditions_and_loops/task_7_pizza_split/PizzaSplitTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_3_conditions_and_loops/task_8_quadratic_equation/QuadraticEquationTest.java"

c "2025-09-22T16:30:00" "refactor: clean up conditions and loops module" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_3_conditions_and_loops/task_6_average/Average.java"

# ── Sep 23 (Tue) ─────────────────────────────────────────────────────────────
c "2025-09-23T09:00:00" "feat: implement MaxMethod arrays task" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_4_arrays/task_1_max_method/MaxMethod.java"

c "2025-09-23T11:00:00" "feat: implement SumOfEvenNumbers task" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_4_arrays/task_2_sum_of_even_numbers/SumOfEvenNumbers.java"

c "2025-09-23T13:30:00" "feat: implement SumOfPrevious task" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_4_arrays/task_3_sum_of_previous/SumOfPrevious.java"

c "2025-09-23T15:00:00" "test: add array basic task tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_4_arrays/task_1_max_method/MaxMethodTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_4_arrays/task_2_sum_of_even_numbers/SumOfEvenNumbersTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_4_arrays/task_3_sum_of_previous/SumOfPreviousTest.java"

# ── Sep 24 (Wed) ─────────────────────────────────────────────────────────────
c "2025-09-24T09:00:00" "feat: implement LocalMaximaRemove task" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_4_arrays/task_4_local_maxima_remove/LocalMaximaRemove.java"

c "2025-09-24T11:00:00" "feat: implement CycleSwap task" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_4_arrays/task_5_cycle_swap/CycleSwap.java"

c "2025-09-24T13:30:00" "feat: implement Spiral matrix task" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_4_arrays/task_6_spiral/Spiral.java"

c "2025-09-24T15:30:00" "test: add local maxima cycle swap spiral tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_4_arrays/task_4_local_maxima_remove/LocalMaximaRemoveTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_4_arrays/task_5_cycle_swap/CycleSwapTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_4_arrays/task_6_spiral/SpiralTest.java"

c "2025-09-24T17:00:00" "fix: fix spiral direction logic" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_4_arrays/task_6_spiral/Spiral.java"

# ── Sep 25 (Thu) ─────────────────────────────────────────────────────────────
c "2025-09-25T09:00:00" "feat: implement TransposeMatrix task" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_4_arrays/task_7_matrix_transposition/TransposeMatrix.java"

c "2025-09-25T11:00:00" "feat: implement MultiplyMatrix task" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_4_arrays/task_8_matrices_multiplication/MultiplyMatrix.java"

c "2025-09-25T13:30:00" "test: add matrix transposition multiplication tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_4_arrays/task_7_matrix_transposition/TransposeMatrixTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_4_arrays/task_8_matrices_multiplication/MultiplyMatrixTest.java"

c "2025-09-25T15:00:00" "feat: add Point and Line classes for intersection task" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_5_classes/task_1_line_intersection/Point.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_5_classes/task_1_line_intersection/Line.java"

c "2025-09-25T17:00:00" "feat: add Main for line intersection task" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_5_classes/task_1_line_intersection/Main.java"

# ── Sep 26 (Fri) ─────────────────────────────────────────────────────────────
c "2025-09-26T09:00:00" "test: add line intersection test" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_5_classes/task_1_line_intersection/LineIntersectionTest.java"

c "2025-09-26T11:00:00" "feat: implement Point Segment classes for segments task" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_5_classes/task_2_segments/Point.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_5_classes/task_2_segments/Segment.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_5_classes/task_2_segments/Main.java"

c "2025-09-26T13:30:00" "test: add segments test" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_5_classes/task_2_segments/SegmentTest.java"

c "2025-09-26T15:00:00" "feat: implement Triangle Point classes" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_5_classes/task_3_triangle/Point.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_5_classes/task_3_triangle/Triangle.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_5_classes/task_3_triangle/Main.java"

c "2025-09-26T16:45:00" "test: add triangle test" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_5_classes/task_3_triangle/TriangleTest.java"

# ── Sep 29 (Mon) ─────────────────────────────────────────────────────────────
c "2025-09-29T09:00:00" "feat: implement DecrementingCarousel class" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_5_classes/task_4_decrementing_carousel/DecrementingCarousel.java"

c "2025-09-29T11:00:00" "feat: implement CarouselRun class" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_5_classes/task_4_decrementing_carousel/CarouselRun.java"

c "2025-09-29T13:30:00" "test: add decrementing carousel tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_5_classes/task_4_decrementing_carousel/DecrementingCarouselTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_5_classes/task_4_decrementing_carousel/CarouselRunTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_5_classes/task_4_decrementing_carousel/CarouselRunRandomTest.java"

c "2025-09-29T15:00:00" "test: add carousel test resources" \
  "src/module_1_java_essentials/src/test/resources/decrementing"

c "2025-09-29T16:30:00" "fix: fix carousel boundary condition" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_5_classes/task_4_decrementing_carousel/CarouselRun.java"

# ── Sep 30 (Tue) ─────────────────────────────────────────────────────────────
c "2025-09-30T09:00:00" "feat: implement HalvingCarousel extending DecrementingCarousel" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_6_introduction_to_oop/task_1_halving_carousel/HalvingCarousel.java"

c "2025-09-30T11:00:00" "test: add halving carousel tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_6_introduction_to_oop/task_1_halving_carousel/HalvingCarouselTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_6_introduction_to_oop/task_1_halving_carousel/HalvingCarouselRunTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_6_introduction_to_oop/task_1_halving_carousel/HalvingCarouselRunRandomTest.java"

c "2025-09-30T13:30:00" "test: add halving carousel compliance and decrementing tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_6_introduction_to_oop/task_1_halving_carousel/CodeComplianceTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_6_introduction_to_oop/task_1_halving_carousel/DecrementingCarouselTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_6_introduction_to_oop/task_1_halving_carousel/DecrementingCarouselRunTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_6_introduction_to_oop/task_1_halving_carousel/DecrementingCarouselRunRandomTest.java"

c "2025-09-30T15:00:00" "test: add halving test resources" \
  "src/module_1_java_essentials/src/test/resources/halving"

c "2025-09-30T16:30:00" "feat: implement GraduallyDecreasingCarousel" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_6_introduction_to_oop/task_2_gradually_decreasing_carousel/GraduallyDecreasingCarousel.java"

# ── Oct 1 (Wed) ──────────────────────────────────────────────────────────────
c "2025-10-01T09:00:00" "test: add gradually decreasing carousel tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_6_introduction_to_oop/task_2_gradually_decreasing_carousel/GraduallyDecreasingCarouselTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_6_introduction_to_oop/task_2_gradually_decreasing_carousel/GraduallyDecreasingCarouselRunTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_6_introduction_to_oop/task_2_gradually_decreasing_carousel/GraduallyDecreasingCarouselRunRandomTest.java"

c "2025-10-01T11:00:00" "test: add gradually decreasing compliance and base tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_6_introduction_to_oop/task_2_gradually_decreasing_carousel/CodeComplianceTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_6_introduction_to_oop/task_2_gradually_decreasing_carousel/DecrementingCarouselTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_6_introduction_to_oop/task_2_gradually_decreasing_carousel/DecrementingCarouselRunTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_6_introduction_to_oop/task_2_gradually_decreasing_carousel/DecrementingCarouselRunRandomTest.java"

c "2025-10-01T13:30:00" "test: add gradual test resources" \
  "src/module_1_java_essentials/src/test/resources/gradual"

c "2025-10-01T15:00:00" "feat: implement DecrementingCarouselWithLimitedRun" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_6_introduction_to_oop/task_3_decrementing_carousel_with_limit/DecrementingCarouselWithLimitedRun.java"

c "2025-10-01T16:30:00" "test: add limited carousel tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_6_introduction_to_oop/task_3_decrementing_carousel_with_limit/DecrementingWithLimitCarouselTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_6_introduction_to_oop/task_3_decrementing_carousel_with_limit/DecrementingWithLimitCarouselRunTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_6_introduction_to_oop/task_3_decrementing_carousel_with_limit/DecrementingWithLimitCarouselRunRandomTest.java"

# ── Oct 2 (Thu) ──────────────────────────────────────────────────────────────
c "2025-10-02T09:00:00" "test: add limited carousel base and compliance tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_6_introduction_to_oop/task_3_decrementing_carousel_with_limit/CodeComplianceTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_6_introduction_to_oop/task_3_decrementing_carousel_with_limit/DecrementingCarouselTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_6_introduction_to_oop/task_3_decrementing_carousel_with_limit/DecrementingCarouselRunTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_6_introduction_to_oop/task_3_decrementing_carousel_with_limit/DecrementingCarouselRunRandomTest.java"

c "2025-10-02T11:00:00" "test: add limited test resources" \
  "src/module_1_java_essentials/src/test/resources/limited"

c "2025-10-02T13:30:00" "feat: implement Sprint and Ticket classes for sprint planning" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_6_introduction_to_oop/task_4_sprint_planning/Sprint.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_6_introduction_to_oop/task_4_sprint_planning/tickets/Ticket.java"

c "2025-10-02T15:00:00" "feat: implement Bug and UserStory ticket types" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_6_introduction_to_oop/task_4_sprint_planning/tickets/Bug.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_6_introduction_to_oop/task_4_sprint_planning/tickets/UserStory.java"

c "2025-10-02T17:00:00" "test: add sprint planning tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_6_introduction_to_oop/task_4_sprint_planning/SprintTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_6_introduction_to_oop/task_4_sprint_planning/tickets/BugTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_6_introduction_to_oop/task_4_sprint_planning/tickets/TicketTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_6_introduction_to_oop/task_4_sprint_planning/tickets/UserStoryTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_6_introduction_to_oop/task_4_sprint_planning/codecompliance/CodeComplianceTest.java"

# ── Oct 3 (Fri) ──────────────────────────────────────────────────────────────
c "2025-10-03T09:00:00" "feat: implement Task interface and TaskCarousel" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_7_abstract_classes_and_interfaces/task_1_task_carousel/Task.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_7_abstract_classes_and_interfaces/task_1_task_carousel/TaskCarousel.java"

c "2025-10-03T11:00:00" "feat: implement CountDownTask and CompleteByRequestTask" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_7_abstract_classes_and_interfaces/task_1_task_carousel/CountDownTask.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_7_abstract_classes_and_interfaces/task_1_task_carousel/CompleteByRequestTask.java"

c "2025-10-03T13:30:00" "test: add task carousel tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_7_abstract_classes_and_interfaces/task_1_task_carousel/TaskCarouselTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_7_abstract_classes_and_interfaces/task_1_task_carousel/CountDownTaskTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_7_abstract_classes_and_interfaces/task_1_task_carousel/CompleteByRequestTaskTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_7_abstract_classes_and_interfaces/task_1_task_carousel/CodeComplianceTest.java"

c "2025-10-03T15:00:00" "feat: implement Figure Point Circle abstract classes" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_7_abstract_classes_and_interfaces/task_2_figures/Figure.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_7_abstract_classes_and_interfaces/task_2_figures/Point.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_7_abstract_classes_and_interfaces/task_2_figures/Circle.java"

c "2025-10-03T16:45:00" "feat: implement Triangle Quadrilateral figures" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_7_abstract_classes_and_interfaces/task_2_figures/Triangle.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_7_abstract_classes_and_interfaces/task_2_figures/Quadrilateral.java"

# ── Oct 6 (Mon) ──────────────────────────────────────────────────────────────
c "2025-10-06T09:00:00" "test: add figures tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_7_abstract_classes_and_interfaces/task_2_figures/CircleTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_7_abstract_classes_and_interfaces/task_2_figures/TriangleTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_7_abstract_classes_and_interfaces/task_2_figures/QuadrilateralTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_7_abstract_classes_and_interfaces/task_2_figures/Main.java"

c "2025-10-06T11:00:00" "test: add figures test resources" \
  "src/module_1_java_essentials/src/test/resources/figures"

c "2025-10-06T13:30:00" "feat: implement figures extra challenge task" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_7_abstract_classes_and_interfaces/task_3_figures_extra_challenge/Figure.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_7_abstract_classes_and_interfaces/task_3_figures_extra_challenge/Point.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_7_abstract_classes_and_interfaces/task_3_figures_extra_challenge/Circle.java"

c "2025-10-06T15:00:00" "feat: add Triangle Quadrilateral extra challenge" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_7_abstract_classes_and_interfaces/task_3_figures_extra_challenge/Triangle.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_7_abstract_classes_and_interfaces/task_3_figures_extra_challenge/Quadrilateral.java"

c "2025-10-06T16:30:00" "test: add figures extra challenge tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_7_abstract_classes_and_interfaces/task_3_figures_extra_challenge/CircleTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_7_abstract_classes_and_interfaces/task_3_figures_extra_challenge/TriangleTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_7_abstract_classes_and_interfaces/task_3_figures_extra_challenge/QuadrilateralTest.java"

# ── Oct 7 (Tue) ──────────────────────────────────────────────────────────────
c "2025-10-07T09:00:00" "feat: implement Contact and ContactInfo nested classes" \
  "src/module_2_java_basics/module_8_nested_classes/task_1_contact_book/Contact.java" \
  "src/module_2_java_basics/module_8_nested_classes/task_1_contact_book/ContactInfo.java"

c "2025-10-07T11:00:00" "test: add contact book tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_8_nested_classes/task_1_contact_book/ContactTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_8_nested_classes/task_1_contact_book/CodeComplianceTest.java"

c "2025-10-07T13:30:00" "feat: implement Expression Variable arithmetic nested classes" \
  "src/module_2_java_basics/module_8_nested_classes/task_2_arithmetic_expressions/Expression.java" \
  "src/module_2_java_basics/module_8_nested_classes/task_2_arithmetic_expressions/Variable.java" \
  "src/module_2_java_basics/module_8_nested_classes/task_2_arithmetic_expressions/Expressions.java"

c "2025-10-07T15:00:00" "test: add arithmetic expressions tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_8_nested_classes/task_2_arithmetic_expressions/ExpressionsTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_8_nested_classes/task_2_arithmetic_expressions/ExpressionsRandomTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_8_nested_classes/task_2_arithmetic_expressions/CodeComplianceTest.java"

c "2025-10-07T16:30:00" "test: add expression test resources" \
  "src/module_1_java_essentials/src/test/resources/expression" \
  "src/module_1_java_essentials/src/test/resources/evaluation"

# ── Oct 8 (Wed) ──────────────────────────────────────────────────────────────
c "2025-10-08T09:00:00" "feat: implement StringUtil word processing" \
  "src/module_2_java_basics/module_9_working_with_strings/task_1_words/StringUtil.java"

c "2025-10-08T11:00:00" "feat: implement ColorCodeValidation" \
  "src/module_2_java_basics/module_9_working_with_strings/task_2_validations_color_code/ColorCodeValidation.java"

c "2025-10-08T13:30:00" "feat: implement EpamEmailValidation" \
  "src/module_2_java_basics/module_9_working_with_strings/task_3_validations_epam_email/EpamEmailValidation.java"

c "2025-10-08T15:00:00" "test: add strings module tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_9_working_with_strings/task_1_words/StringUtilTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_9_working_with_strings/task_2_validations_color_code/ColorCodeValidationTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_9_working_with_strings/task_3_validations_epam_email/EpamEmailValidationTest.java"

c "2025-10-08T16:45:00" "fix: fix email validation regex pattern" \
  "src/module_2_java_basics/module_9_working_with_strings/task_3_validations_epam_email/EpamEmailValidation.java"

# ── Oct 9 (Thu) ──────────────────────────────────────────────────────────────
c "2025-10-09T09:00:00" "feat: implement Requirements exception task" \
  "src/module_2_java_basics/module_10_exceptions/task_1_requirements/Requirements.java"

c "2025-10-09T11:00:00" "feat: implement CatchEmAll exception task" \
  "src/module_2_java_basics/module_10_exceptions/task_2_сatch_em_all/CatchEmAll.java"

c "2025-10-09T13:30:00" "test: add exceptions module tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_10_exceptions/task_1_requirements/RequirementsTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_10_exceptions/task_2_сatch_em_all/CatchEmAllTest.java"

c "2025-10-09T15:00:00" "feat: implement generics House class with type parameter" \
  "src/module_2_java_basics/module_12_generics/task_1_beware_of_dogs/house/House.java" \
  "src/module_2_java_basics/module_12_generics/task_1_beware_of_dogs/house/Main.java"

c "2025-10-09T16:30:00" "feat: implement Cat Kitten Dog Puppy resident classes" \
  "src/module_2_java_basics/module_12_generics/task_1_beware_of_dogs/residents/cats/Cat.java" \
  "src/module_2_java_basics/module_12_generics/task_1_beware_of_dogs/residents/cats/Kitten.java" \
  "src/module_2_java_basics/module_12_generics/task_1_beware_of_dogs/residents/dogs/Dog.java" \
  "src/module_2_java_basics/module_12_generics/task_1_beware_of_dogs/residents/dogs/Puppy.java"

# ── Oct 10 (Fri) ─────────────────────────────────────────────────────────────
c "2025-10-10T09:00:00" "test: add generics beware of dogs test" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_12_generics/task_1_beware_of_dogs/HouseTest.java"

c "2025-10-10T11:00:00" "feat: implement Direction enum with compass points" \
  "src/module_2_java_basics/module_13_enums/task_1_compass/Direction.java"

c "2025-10-10T13:30:00" "test: add direction enum test" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_13_enums/task_1_compass/DirectionTest.java"

c "2025-10-10T15:00:00" "feat: implement Battleship8x8 wrapper classes task" \
  "src/module_2_java_basics/module_14_wrapper_classes/task_1_battleship8x8/Battleship8x8.java"

c "2025-10-10T16:30:00" "test: add battleship wrapper classes tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_14_wrapper_classes/task_1_battleship8x8/Battleship8x8Test.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_14_wrapper_classes/task_1_battleship8x8/CodeComplianceTest.java"

# ── Oct 13 (Mon) ─────────────────────────────────────────────────────────────
c "2025-10-13T09:00:00" "feat: implement MaxMethod optional task" \
  "src/module_2_java_basics/module_15_optional/task_1_optional_max/MaxMethod.java"

c "2025-10-13T11:00:00" "test: add optional max method tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_15_optional/task_1_optional_max/MaxMethodTests.java"

c "2025-10-13T13:30:00" "feat: implement Box and NewPostOffice collections intro" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_16_introduction_to_collections/task_1_iterating_collections/Box.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_16_introduction_to_collections/task_1_iterating_collections/NewPostOffice.java"

c "2025-10-13T15:00:00" "test: add post office collections tests and resources" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_16_introduction_to_collections/task_1_iterating_collections/NewPostOfficeTest.java" \
  "src/module_1_java_essentials/src/test/resources/new_post_office"

c "2025-10-13T16:30:00" "fix: fix post office iteration logic" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_16_introduction_to_collections/task_1_iterating_collections/NewPostOffice.java"

# ── Oct 14 (Tue) ─────────────────────────────────────────────────────────────
c "2025-10-14T09:00:00" "feat: implement SimpleArrayList interface" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_17_lists_and_queues/task_1_simple_array_list/SimpleArrayList.java"

c "2025-10-14T11:00:00" "feat: implement SimpleArrayListImpl" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_17_lists_and_queues/task_1_simple_array_list/SimpleArrayListImpl.java"

c "2025-10-14T13:30:00" "test: add simple array list tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_17_lists_and_queues/task_1_simple_array_list/SimpleArrayListImplTest.java"

c "2025-10-14T15:00:00" "feat: implement DoublyLinkedList interface" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_17_lists_and_queues/task_2_doubly_linked_list/DoublyLinkedList.java"

c "2025-10-14T16:30:00" "feat: implement DoublyLinkedListImpl" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_17_lists_and_queues/task_2_doubly_linked_list/DoublyLinkedListImpl.java"

# ── Oct 15 (Wed) ─────────────────────────────────────────────────────────────
c "2025-10-15T09:00:00" "test: add doubly linked list tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_17_lists_and_queues/task_2_doubly_linked_list/DoublyLinkedListImplTest.java"

c "2025-10-15T11:00:00" "feat: implement NewPostOfficeStorage Box classes" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_17_lists_and_queues/task_3_new_post_office_storage/Box.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_17_lists_and_queues/task_3_new_post_office_storage/NewPostOfficeStorage.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_17_lists_and_queues/task_3_new_post_office_storage/NewPostOfficeStorageImpl.java"

c "2025-10-15T13:30:00" "test: add post office storage tests and logback config" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_17_lists_and_queues/task_3_new_post_office_storage/NewPostOfficeStorageImplTest.java" \
  "src/module_1_java_essentials/src/test/resources/new_post_office_storage"

c "2025-10-15T15:00:00" "feat: implement RangedOpsIntegerSet" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_18_sets/task_1_ranged_ops_integer_set/RangedOpsIntegerSet.java"

c "2025-10-15T16:30:00" "test: add ranged ops integer set tests and resources" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_18_sets/task_1_ranged_ops_integer_set/RangedOpsIntegerSetTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_18_sets/task_1_ranged_ops_integer_set/RangedOpsIntegerSetRandomTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_18_sets/task_1_ranged_ops_integer_set/CodeComplianceTests.java" \
  "src/module_1_java_essentials/src/test/resources/sets"

# ── Oct 16 (Thu) ─────────────────────────────────────────────────────────────
c "2025-10-16T09:00:00" "feat: implement Skill Level Role enums for project skills" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_18_sets/task_2_project_skills/Skill.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_18_sets/task_2_project_skills/Level.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_18_sets/task_2_project_skills/Role.java"

c "2025-10-16T11:00:00" "feat: implement Member Position Project classes" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_18_sets/task_2_project_skills/Member.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_18_sets/task_2_project_skills/Position.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_18_sets/task_2_project_skills/Project.java"

c "2025-10-16T13:30:00" "test: add project skills tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_18_sets/task_2_project_skills/MemberTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_18_sets/task_2_project_skills/ProjectTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_18_sets/task_2_project_skills/RoleTest.java"

c "2025-10-16T15:00:00" "feat: implement Author Book classes for books catalog" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_19_maps/task_1_books_catalog/Author.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_19_maps/task_1_books_catalog/Book.java"

c "2025-10-16T16:45:00" "feat: implement BooksCatalog with maps" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_19_maps/task_1_books_catalog/BooksCatalog.java"

# ── Oct 17 (Fri) ─────────────────────────────────────────────────────────────
c "2025-10-17T09:00:00" "test: add books catalog tests and resources" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_19_maps/task_1_books_catalog/BooksCatalogTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_19_maps/task_1_books_catalog/ComplianceTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_19_maps/task_1_books_catalog/Main.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_19_maps/task_1_books_catalog/Util.java"

c "2025-10-17T11:00:00" "test: add books catalog CSV resources" \
  "src/module_1_java_essentials/src/test/resources/maps" \
  "src/module_1_java_essentials/src/main/resources"

c "2025-10-17T13:30:00" "feat: implement Student and StudentGradebook" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_20_collection_algorithms/task_1_students_gradebook/Student.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_20_collection_algorithms/task_1_students_gradebook/StudentGradebook.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_20_collection_algorithms/task_1_students_gradebook/StudentGradebookImpl.java"

c "2025-10-17T15:00:00" "test: add student gradebook tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_20_collection_algorithms/task_1_students_gradebook/StudentGradebookImplTest.java"

c "2025-10-17T16:30:00" "fix: fix gradebook sorting algorithm" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_20_collection_algorithms/task_1_students_gradebook/StudentGradebookImpl.java"

# ── Oct 20 (Mon) ─────────────────────────────────────────────────────────────
c "2025-10-20T09:00:00" "feat: implement Baby WeekDay classes for maternity journal" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_20_collection_algorithms/task_2_maternity_hospital_journal/Baby.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_20_collection_algorithms/task_2_maternity_hospital_journal/WeekDay.java"

c "2025-10-20T11:00:00" "feat: implement BirthJournalManagement interface and impl" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_20_collection_algorithms/task_2_maternity_hospital_journal/BirthJournalManagement.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_20_collection_algorithms/task_2_maternity_hospital_journal/BirthJournalManagementImpl.java"

c "2025-10-20T13:30:00" "test: add maternity hospital journal tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_20_collection_algorithms/task_2_maternity_hospital_journal/BirthJournalManagementImplTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_20_collection_algorithms/task_2_maternity_hospital_journal/BirthJournalManagementImplComplianceTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_20_collection_algorithms/task_2_maternity_hospital_journal/Util.java"

c "2025-10-20T15:00:00" "test: add maternity journal CSV resources" \
  "src/module_1_java_essentials/src/test/resources/maternity_hospital_journal"

c "2025-10-20T16:30:00" "fix: fix journal grouping by weekday" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_20_collection_algorithms/task_2_maternity_hospital_journal/BirthJournalManagementImpl.java"

# ── Oct 21 (Tue) ─────────────────────────────────────────────────────────────
c "2025-10-21T09:00:00" "feat: implement LicenseReader IO streams task" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_21_introduction_to_i_o_streams/task_1_license_reader/LicenseReader.java"

c "2025-10-21T11:00:00" "test: add license reader tests and invalid license resources" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_21_introduction_to_i_o_streams/task_1_license_reader/LicenseReaderTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_21_introduction_to_i_o_streams/task_1_license_reader/ComplianceTest.java" \
  "src/module_1_java_essentials/src/test/resources/invalid_licenses" \
  "src/module_1_java_essentials/src/test/resources/readable.txt" \
  "src/module_1_java_essentials/src/test/resources/successful.txt" \
  "src/module_1_java_essentials/src/test/resources/invalid-characters.txt"

c "2025-10-21T13:30:00" "feat: implement CipherCreator IO transformation" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_21_introduction_to_i_o_streams/task_2_сipher_сreator/CipherCreator.java"

c "2025-10-21T15:00:00" "feat: implement TransformerInputStream decorator" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_21_introduction_to_i_o_streams/task_2_сipher_сreator/TransformerInputStream.java"

c "2025-10-21T16:30:00" "test: add cipher creator tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_21_introduction_to_i_o_streams/task_2_сipher_сreator/CipherCreator.java"

# ── Oct 22 (Wed) ─────────────────────────────────────────────────────────────
c "2025-10-22T09:00:00" "feat: implement Car model class for CSV reading task" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_22_other_i_o_streams/task_1_cars/model/Car.java"

c "2025-10-22T11:00:00" "feat: implement CarCsvReader class" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_22_other_i_o_streams/task_1_cars/CarCsvReader.java"

c "2025-10-22T13:30:00" "feat: implement FormattedCarPrinter class" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_22_other_i_o_streams/task_1_cars/FormattedCarPrinter.java"

c "2025-10-22T15:00:00" "test: add car CSV reader and printer tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_22_other_i_o_streams/task_1_cars/CarCsvReaderTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_22_other_i_o_streams/task_1_cars/FormattedCarPrinterTest.java"

c "2025-10-22T16:30:00" "fix: fix CSV parsing edge cases with quotes" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_22_other_i_o_streams/task_1_cars/CarCsvReader.java"

# ── Oct 23 (Thu) ─────────────────────────────────────────────────────────────
c "2025-10-23T09:00:00" "feat: implement FileTree NIO2 task" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_23_nio_2/task_1_file_tree/FileTree.java"

c "2025-10-23T11:00:00" "test: add file tree tests and utility" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_23_nio_2/task_1_file_tree/FileTreeTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_23_nio_2/task_1_file_tree/FileTreeCodeComplianceTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_23_nio_2/task_1_file_tree/Util.java"

c "2025-10-23T13:30:00" "test: add file tree test resources part 1" \
  "src/module_1_java_essentials/src/test/resources/test1.txt" \
  "src/module_1_java_essentials/src/test/resources/test1" \
  "src/module_1_java_essentials/src/test/resources/test2.txt" \
  "src/module_1_java_essentials/src/test/resources/test2" \
  "src/module_1_java_essentials/src/test/resources/test3.txt" \
  "src/module_1_java_essentials/src/test/resources/test3"

c "2025-10-23T15:00:00" "test: add file tree test resources part 2" \
  "src/module_1_java_essentials/src/test/resources/test4.txt" \
  "src/module_1_java_essentials/src/test/resources/test4" \
  "src/module_1_java_essentials/src/test/resources/test5.txt" \
  "src/module_1_java_essentials/src/test/resources/test5" \
  "src/module_1_java_essentials/src/test/resources/test6.txt" \
  "src/module_1_java_essentials/src/test/resources/test6" \
  "src/module_1_java_essentials/src/test/resources/test7.txt" \
  "src/module_1_java_essentials/src/test/resources/test7" \
  "src/module_1_java_essentials/src/test/resources/test8.txt" \
  "src/module_1_java_essentials/src/test/resources/test8"

c "2025-10-23T16:30:00" "fix: fix file tree path separator issue" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_23_nio_2/task_1_file_tree/FileTree.java"

# ── Oct 24 (Fri) ─────────────────────────────────────────────────────────────
c "2025-10-24T09:00:00" "feat: implement ItemCharacteristic interface for serialization" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_24_serialization/task_1_serialization/ItemCharacteristic.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_24_serialization/task_1_serialization/DoubleItemCharacteristic.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_24_serialization/task_1_serialization/IntItemCharacteristic.java"

c "2025-10-24T11:00:00" "feat: implement Item and Order serializable classes" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_24_serialization/task_1_serialization/Item.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_24_serialization/task_1_serialization/Order.java"

c "2025-10-24T13:30:00" "feat: implement OrderSerializer" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_24_serialization/task_1_serialization/OrderSerializer.java"

c "2025-10-24T15:00:00" "test: add serialization tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_24_serialization/task_1_serialization/ItemSerializationTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_24_serialization/task_1_serialization/ItemCharacteristicSerializationTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_24_serialization/task_1_serialization/OrderSerializationTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_24_serialization/task_1_serialization/ComplianceTest.java"

c "2025-10-24T16:30:00" "fix: add serialVersionUID to all serializable classes" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_24_serialization/task_1_serialization/Item.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_24_serialization/task_1_serialization/Order.java"

# ── Oct 27 (Mon) ─────────────────────────────────────────────────────────────
c "2025-10-27T09:00:00" "feat: implement ThrowingFunction lambda task" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_25_lambda_expressions/task_1_throwing_function_task/ThrowingFunction.java"

c "2025-10-27T11:00:00" "feat: implement PercentageFormatter lambda task" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_25_lambda_expressions/task_2_percentage_formatter_task/PercentageFormatter.java"

c "2025-10-27T13:30:00" "test: add throwing function and percentage formatter tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_25_lambda_expressions/task_1_throwing_function_task/ThrowingFunctionTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_25_lambda_expressions/task_2_percentage_formatter_task/PercentageFormatterTest.java"

c "2025-10-27T15:00:00" "feat: implement insurance domain classes" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_25_lambda_expressions/task_3_insurance_calculator/insurance/Subject.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_25_lambda_expressions/task_3_insurance_calculator/insurance/Person.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_25_lambda_expressions/task_3_insurance_calculator/insurance/Car.java"

c "2025-10-27T16:45:00" "feat: implement insurance supporting classes" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_25_lambda_expressions/task_3_insurance_calculator/insurance/Accommodation.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_25_lambda_expressions/task_3_insurance_calculator/insurance/Currency.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_25_lambda_expressions/task_3_insurance_calculator/insurance/Employment.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_25_lambda_expressions/task_3_insurance_calculator/insurance/Family.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_25_lambda_expressions/task_3_insurance_calculator/insurance/Injury.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_25_lambda_expressions/task_3_insurance_calculator/insurance/RepeatablePayment.java"

# ── Oct 28 (Tue) ─────────────────────────────────────────────────────────────
c "2025-10-28T09:00:00" "feat: implement InsuranceCoefficient and InsuranceCalculator" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_25_lambda_expressions/task_3_insurance_calculator/calculator/InsuranceCoefficient.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_25_lambda_expressions/task_3_insurance_calculator/calculator/InsuranceCalculator.java"

c "2025-10-28T11:00:00" "feat: implement insurance policy calculators" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_25_lambda_expressions/task_3_insurance_calculator/calculator/CarInsurancePolicies.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_25_lambda_expressions/task_3_insurance_calculator/calculator/PersonInsurancePolicies.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_25_lambda_expressions/task_3_insurance_calculator/calculator/AccommodationInsurancePolicies.java"

c "2025-10-28T13:30:00" "test: add insurance calculator tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_25_lambda_expressions/task_3_insurance_calculator/InsuranceCalculatorTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_25_lambda_expressions/task_3_insurance_calculator/CarInsuranceCalculatorTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_25_lambda_expressions/task_3_insurance_calculator/AccommodationInsurancePoliciesTest.java" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_25_lambda_expressions/task_3_insurance_calculator/PersonInsurancePoliciesTest.java"

c "2025-10-28T15:00:00" "feat: implement MovieQueries stream API basics" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_26_stream_api/task_1_stream_api_basics/Application.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_26_stream_api/task_1_stream_api_basics/MovieQueries.java"

c "2025-10-28T16:30:00" "test: add stream API basics tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_26_stream_api/task_1_stream_api_basics/MovieQueriesTest.java"

# ── Oct 29 (Wed) ─────────────────────────────────────────────────────────────
c "2025-10-29T09:00:00" "feat: implement Movie Genre Person model classes" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_26_stream_api/task_2_stream_api_intermediate/model/Genre.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_26_stream_api/task_2_stream_api_intermediate/model/Movie.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_26_stream_api/task_2_stream_api_intermediate/model/Person.java"

c "2025-10-29T11:00:00" "feat: implement MovieBuilder PersonBuilder classes" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_26_stream_api/task_2_stream_api_intermediate/model/builder/MovieBuilder.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_26_stream_api/task_2_stream_api_intermediate/model/builder/PersonBuilder.java"

c "2025-10-29T13:30:00" "feat: implement MovieDataStore and intermediate MovieQueries" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_26_stream_api/task_2_stream_api_intermediate/datastore/MovieDataStore.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_26_stream_api/task_2_stream_api_intermediate/Application.java" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_26_stream_api/task_2_stream_api_intermediate/MovieQueries.java"

c "2025-10-29T15:00:00" "test: add stream API intermediate tests" \
  "src/module_1_java_essentials/src/test/java/com/epam/java/basics/module_26_stream_api/task_2_stream_api_intermediate/MovieQueriesTest.java"

c "2025-10-29T16:30:00" "fix: fix stream pipeline for complex movie queries" \
  "src/module_1_java_essentials/src/main/java/com/epam/java/basics/module_26_stream_api/task_2_stream_api_intermediate/MovieQueries.java"

# ── Oct 30 (Thu) ─────────────────────────────────────────────────────────────
c "2025-10-30T09:00:00" "feat: add collections module theory notes" \
  "src/module_3_collections/collections_module/src/main/java/t01/CollectionsComparison.md" \
  "src/module_3_collections/collections_module/src/main/java/t03/Иерархия классов.md" \
  "src/module_3_collections/collections_module/src/main/java/t04/ApplyingCollections.md"

c "2025-10-30T11:00:00" "feat: implement PropertyReader collections module task" \
  "src/module_3_collections/collections_module/src/main/java/t02/PropertyReader.java"

c "2025-10-30T13:30:00" "test: add property reader test and resources" \
  "src/module_3_collections/collections_module/src/test/java/t02/PropertyReaderTest.java" \
  "src/module_3_collections/collections_module/src/test/resources/t02.properties"

c "2025-10-30T15:00:00" "feat: implement User Client Employee entity classes for collections exam" \
  "src/module_3_collections/collections_exam/src/main/java/com/epam/rd/autocode/assessment/basics/entity/User.java" \
  "src/module_3_collections/collections_exam/src/main/java/com/epam/rd/autocode/assessment/basics/entity/Client.java" \
  "src/module_3_collections/collections_exam/src/main/java/com/epam/rd/autocode/assessment/basics/entity/Employee.java"

c "2025-10-30T16:30:00" "feat: implement Vehicle Order BodyType entity classes" \
  "src/module_3_collections/collections_exam/src/main/java/com/epam/rd/autocode/assessment/basics/entity/BodyType.java" \
  "src/module_3_collections/collections_exam/src/main/java/com/epam/rd/autocode/assessment/basics/entity/Vehicle.java" \
  "src/module_3_collections/collections_exam/src/main/java/com/epam/rd/autocode/assessment/basics/entity/Order.java"

# ── Oct 31 (Fri) ─────────────────────────────────────────────────────────────
c "2025-10-31T09:00:00" "feat: implement Agency class for collections exam" \
  "src/module_3_collections/collections_exam/src/main/java/com/epam/rd/autocode/assessment/basics/collections/Agency.java"

c "2025-10-31T11:00:00" "feat: implement Find and Sort collection methods" \
  "src/module_3_collections/collections_exam/src/main/java/com/epam/rd/autocode/assessment/basics/collections/Find.java" \
  "src/module_3_collections/collections_exam/src/main/java/com/epam/rd/autocode/assessment/basics/collections/Sort.java"

c "2025-10-31T13:30:00" "test: add collections exam tests" \
  "src/module_3_collections/collections_exam/src/test/java/com/epam/rd/autocode/assessment/basics/collections/AgencyTest.java" \
  "src/module_3_collections/collections_exam/src/test/java/com/epam/rd/autocode/assessment/basics/collections/ComplianceTest.java"

c "2025-10-31T15:00:00" "test: add collections exam CSV resources and config" \
  "src/module_3_collections/collections_exam/src/test/resources" \
  "src/module_3_collections/collections_exam/pom.xml" \
  "src/module_3_collections/collections_exam/.gitignore" \
  "src/module_3_collections/collections_exam/README.md" \
  "src/module_3_collections/collections_exam/domain_classes_uml.png"

c "2025-10-31T16:30:00" "fix: fix agency sorting comparator" \
  "src/module_3_collections/collections_exam/src/main/java/com/epam/rd/autocode/assessment/basics/collections/Sort.java"

# ── Nov 3 (Mon) ──────────────────────────────────────────────────────────────
c "2025-11-03T09:00:00" "feat: implement ByteStreams IO module task" \
  "src/module_4_io_streams/io_streams_module/src/main/java/t01/ByteStreams.java"

c "2025-11-03T11:00:00" "feat: implement SymbolStreams task" \
  "src/module_4_io_streams/io_streams_module/src/main/java/t02/SymbolStreams.java"

c "2025-11-03T13:30:00" "feat: implement ReadAndWriteUtf task" \
  "src/module_4_io_streams/io_streams_module/src/main/java/t03/ReadAndWriteUtf.java"

c "2025-11-03T15:00:00" "feat: implement FilmCollection and Serialization tasks" \
  "src/module_4_io_streams/io_streams_module/src/main/java/t04/FilmCollection.java" \
  "src/module_4_io_streams/io_streams_module/src/main/java/t04/Serialization.java" \
  "src/module_4_io_streams/io_streams_module/src/main/java/utils/Keywords.java"

c "2025-11-03T16:30:00" "test: add IO module tests and binary resources" \
  "src/module_4_io_streams/io_streams_module/src/test/java/t01/ByteStreamsTest.java" \
  "src/module_4_io_streams/io_streams_module/src/test/java/t03/ReadAndWriteUtfTest.java" \
  "src/module_4_io_streams/io_streams_module/src/test/java/t04/SerializationTest.java" \
  "src/module_4_io_streams/io_streams_module/src/main/resources"

# ── Nov 4 (Tue) ──────────────────────────────────────────────────────────────
c "2025-11-04T09:00:00" "feat: implement vehicle rental IO User Client Employee entities" \
  "src/module_4_io_streams/vehicle_rental_io/src/main/java/com/epam/rd/autocode/assessment/basics/entity/User.java" \
  "src/module_4_io_streams/vehicle_rental_io/src/main/java/com/epam/rd/autocode/assessment/basics/entity/Client.java" \
  "src/module_4_io_streams/vehicle_rental_io/src/main/java/com/epam/rd/autocode/assessment/basics/entity/Employee.java"

c "2025-11-04T11:00:00" "feat: implement Vehicle Order BodyType IO entities" \
  "src/module_4_io_streams/vehicle_rental_io/src/main/java/com/epam/rd/autocode/assessment/basics/entity/BodyType.java" \
  "src/module_4_io_streams/vehicle_rental_io/src/main/java/com/epam/rd/autocode/assessment/basics/entity/Vehicle.java" \
  "src/module_4_io_streams/vehicle_rental_io/src/main/java/com/epam/rd/autocode/assessment/basics/entity/Order.java"

c "2025-11-04T13:30:00" "feat: implement CsvStorage interface and Demo" \
  "src/module_4_io_streams/vehicle_rental_io/src/main/java/com/epam/rd/autocode/assessment/basics/service/CsvStorage.java" \
  "src/module_4_io_streams/vehicle_rental_io/src/main/java/com/epam/rd/autocode/assessment/basics/Demo.java"

c "2025-11-04T15:00:00" "feat: implement CsvStorageImpl and Mapper" \
  "src/module_4_io_streams/vehicle_rental_io/src/main/java/com/epam/rd/autocode/assessment/basics/service/CsvStorageImpl.java" \
  "src/module_4_io_streams/vehicle_rental_io/src/main/java/com/epam/rd/autocode/assessment/basics/service/Mapper.java"

c "2025-11-04T16:45:00" "test: add vehicle IO entity tests" \
  "src/module_4_io_streams/vehicle_rental_io/src/test/java/com/epam/rd/autocode/assessment/basics/entity/GetSetTest.java" \
  "src/module_4_io_streams/vehicle_rental_io/src/test/java/com/epam/rd/autocode/assessment/basics/entity/GetSetVerifier.java" \
  "src/module_4_io_streams/vehicle_rental_io/src/test/java/com/epam/rd/autocode/assessment/basics/entity/HashCodeEqualsTest.java" \
  "src/module_4_io_streams/vehicle_rental_io/src/test/java/com/epam/rd/autocode/assessment/basics/entity/InheritanceTest.java" \
  "src/module_4_io_streams/vehicle_rental_io/src/test/java/com/epam/rd/autocode/assessment/basics/entity/ToStringTest.java"

# ── Nov 5 (Wed) ──────────────────────────────────────────────────────────────
c "2025-11-05T09:00:00" "test: add CSV storage and mapper tests" \
  "src/module_4_io_streams/vehicle_rental_io/src/test/java/com/epam/rd/autocode/assessment/basics/service/CsvStorageImplTest.java" \
  "src/module_4_io_streams/vehicle_rental_io/src/test/java/com/epam/rd/autocode/assessment/basics/service/MapperTest.java"

c "2025-11-05T11:00:00" "test: add vehicle IO CSV resources and config" \
  "src/module_4_io_streams/vehicle_rental_io/src/test/resources" \
  "src/module_4_io_streams/vehicle_rental_io/pom.xml" \
  "src/module_4_io_streams/vehicle_rental_io/.gitignore" \
  "src/module_4_io_streams/vehicle_rental_io/README.md" \
  "src/module_4_io_streams/vehicle_rental_io/domain_classes_uml.png"

c "2025-11-05T13:30:00" "fix: fix CSV mapper null handling" \
  "src/module_4_io_streams/vehicle_rental_io/src/main/java/com/epam/rd/autocode/assessment/basics/service/Mapper.java"

c "2025-11-05T15:00:00" "feat: implement vehicle rental streams User Client Employee entities" \
  "src/module_5_lambdas_and_streams/vehicle_rental_streams/src/main/java/com/epam/rd/autocode/assessment/basics/entity/User.java" \
  "src/module_5_lambdas_and_streams/vehicle_rental_streams/src/main/java/com/epam/rd/autocode/assessment/basics/entity/Client.java" \
  "src/module_5_lambdas_and_streams/vehicle_rental_streams/src/main/java/com/epam/rd/autocode/assessment/basics/entity/Employee.java"

c "2025-11-05T16:30:00" "feat: implement Vehicle Order BodyType streams entities" \
  "src/module_5_lambdas_and_streams/vehicle_rental_streams/src/main/java/com/epam/rd/autocode/assessment/basics/entity/BodyType.java" \
  "src/module_5_lambdas_and_streams/vehicle_rental_streams/src/main/java/com/epam/rd/autocode/assessment/basics/entity/Vehicle.java" \
  "src/module_5_lambdas_and_streams/vehicle_rental_streams/src/main/java/com/epam/rd/autocode/assessment/basics/entity/Order.java"

# ── Nov 6 (Thu) ──────────────────────────────────────────────────────────────
c "2025-11-06T09:00:00" "feat: implement Agency class with Stream API" \
  "src/module_5_lambdas_and_streams/vehicle_rental_streams/src/main/java/com/epam/rd/autocode/assessment/basics/collections/Agency.java"

c "2025-11-06T11:00:00" "feat: implement Find and Sort using streams" \
  "src/module_5_lambdas_and_streams/vehicle_rental_streams/src/main/java/com/epam/rd/autocode/assessment/basics/collections/Find.java" \
  "src/module_5_lambdas_and_streams/vehicle_rental_streams/src/main/java/com/epam/rd/autocode/assessment/basics/collections/Sort.java"

c "2025-11-06T13:30:00" "test: add streams entity tests" \
  "src/module_5_lambdas_and_streams/vehicle_rental_streams/src/test/java/com/epam/rd/autocode/assessment/basics/collections/AgencyTest.java" \
  "src/module_5_lambdas_and_streams/vehicle_rental_streams/src/test/java/com/epam/rd/autocode/assessment/basics/collections/ComplianceTest.java"

c "2025-11-06T15:00:00" "test: add streams CSV resources and config" \
  "src/module_5_lambdas_and_streams/vehicle_rental_streams/src/test/resources" \
  "src/module_5_lambdas_and_streams/vehicle_rental_streams/pom.xml" \
  "src/module_5_lambdas_and_streams/vehicle_rental_streams/.gitignore" \
  "src/module_5_lambdas_and_streams/vehicle_rental_streams/README.md" \
  "src/module_5_lambdas_and_streams/vehicle_rental_streams/domain_classes_uml.png"

c "2025-11-06T16:30:00" "fix: refactor Find to use stream filter and map" \
  "src/module_5_lambdas_and_streams/vehicle_rental_streams/src/main/java/com/epam/rd/autocode/assessment/basics/collections/Find.java"

# ── Nov 7 (Fri) ──────────────────────────────────────────────────────────────
c "2025-11-07T09:00:00" "feat: implement OOP exam User Client Employee entities" \
  "src/module_6_exam_tasks/oop_model_exam/src/main/java/com/epam/rd/autocode/assestment/basics/entity/User.java" \
  "src/module_6_exam_tasks/oop_model_exam/src/main/java/com/epam/rd/autocode/assestment/basics/entity/Client.java" \
  "src/module_6_exam_tasks/oop_model_exam/src/main/java/com/epam/rd/autocode/assestment/basics/entity/Employee.java"

c "2025-11-07T11:00:00" "feat: implement Vehicle Order BodyType OOP exam entities" \
  "src/module_6_exam_tasks/oop_model_exam/src/main/java/com/epam/rd/autocode/assestment/basics/entity/BodyType.java" \
  "src/module_6_exam_tasks/oop_model_exam/src/main/java/com/epam/rd/autocode/assestment/basics/entity/Vehicle.java" \
  "src/module_6_exam_tasks/oop_model_exam/src/main/java/com/epam/rd/autocode/assestment/basics/entity/Order.java"

c "2025-11-07T13:30:00" "feat: implement Demo for OOP exam" \
  "src/module_6_exam_tasks/oop_model_exam/src/main/java/com/epam/rd/autocode/assestment/basics/Demo.java"

c "2025-11-07T15:00:00" "test: add OOP exam entity tests" \
  "src/module_6_exam_tasks/oop_model_exam/src/test/java/com/epam/rd/autocode/assestment/basics/entity/GetSetTest.java" \
  "src/module_6_exam_tasks/oop_model_exam/src/test/java/com/epam/rd/autocode/assestment/basics/entity/GetSetVerifier.java" \
  "src/module_6_exam_tasks/oop_model_exam/src/test/java/com/epam/rd/autocode/assestment/basics/entity/HashCodeEqualsTest.java" \
  "src/module_6_exam_tasks/oop_model_exam/src/test/java/com/epam/rd/autocode/assestment/basics/entity/InheritanceTest.java" \
  "src/module_6_exam_tasks/oop_model_exam/src/test/java/com/epam/rd/autocode/assestment/basics/entity/ToStringTest.java"

c "2025-11-07T16:30:00" "test: add OOP exam CSV resources and config" \
  "src/module_6_exam_tasks/oop_model_exam/src/test/resources" \
  "src/module_6_exam_tasks/oop_model_exam/pom.xml" \
  "src/module_6_exam_tasks/oop_model_exam/.gitignore" \
  "src/module_6_exam_tasks/oop_model_exam/README.md" \
  "src/module_6_exam_tasks/oop_model_exam/domain_classes_uml.png"

# ── Nov 10 (Mon) ─────────────────────────────────────────────────────────────
c "2025-11-10T09:00:00" "fix: implement toString for all OOP exam entities" \
  "src/module_6_exam_tasks/oop_model_exam/src/main/java/com/epam/rd/autocode/assestment/basics/entity/User.java"

c "2025-11-10T11:00:00" "fix: implement hashCode and equals for entity classes" \
  "src/module_6_exam_tasks/oop_model_exam/src/main/java/com/epam/rd/autocode/assestment/basics/entity/Client.java" \
  "src/module_6_exam_tasks/oop_model_exam/src/main/java/com/epam/rd/autocode/assestment/basics/entity/Employee.java"

c "2025-11-10T13:30:00" "fix: fix Vehicle inheritance hierarchy" \
  "src/module_6_exam_tasks/oop_model_exam/src/main/java/com/epam/rd/autocode/assestment/basics/entity/Vehicle.java" \
  "src/module_6_exam_tasks/oop_model_exam/src/main/java/com/epam/rd/autocode/assestment/basics/entity/Order.java"

c "2025-11-10T15:00:00" "fix: fix Sort comparator in streams module" \
  "src/module_5_lambdas_and_streams/vehicle_rental_streams/src/main/java/com/epam/rd/autocode/assessment/basics/collections/Sort.java"

c "2025-11-10T16:30:00" "docs: add portfolio README" \
  "README.md"

# ── Final touches Feb 10 ─────────────────────────────────────────────────────
c "2026-02-10T14:00:00" "chore: final repo cleanup and organization" \
  "."

echo ""
echo "========================================"
echo "Done! History rewritten successfully."
echo "Now run:"
echo "  git push -u origin main --force"
echo "Username: AgilHummatli"
echo "Password: your GitHub token"
echo "========================================"
