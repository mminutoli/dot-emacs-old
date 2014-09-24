(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values
   (quote
    ((eval progn
           (setq flycheck-clang-include-path project-include-dir)
           (setq flycheck-clang-language-standard "c++11")
           (setq flycheck-clang-warnings
                 (quote
                  ("all" "extra" "no-mismatched-tags")))
           (setq company-clang-arguments
                 (mapcar
                  (lambda
                    (dir)
                    (concat "-I" dir))
                  flycheck-clang-include-path)))
     (eval progn
           (setq project-include-dir
                 (list "src" "src/frontend_analysis" "src/frontend_analysis/IR_analysis" "src/frontend_analysis/source_code_manipulation" "src/frontend_analysis/IR_manipulation" "src/frontend_analysis/behavior_analysis" "src/frontend_analysis/behavior_analysis/reduced_pdg_computation" "src/machine" "src/logic_node" "src/codesign" "src/codesign/partitioning" "src/codesign/partitioning/metric_partitioning" "src/codesign/partitioning/graph_partitioning" "src/codesign/partitioning/graph_partitioning/models" "src/codesign/partitioning/graph_partitioning/models/Fork_Join" "src/codesign/partitioning/graph_partitioning/utility" "src/codesign/partitioning/graph_partitioning/algorithms" "src/codesign/partitioning/graph_partitioning/partFlow" "src/codesign/partitioning/graph_partitioning/transformations" "src/codesign/mapping" "src/codesign/mapping/ACO" "src/codesign/mapping/ACO/MAH" "src/codesign/mapping/ACO/MAH/Heuristics" "src/codesign/mapping/ACO/CyclicMAH" "src/codesign/mapping/ACO/CyclicMAH/Heuristics" "src/codesign/mapping/ACO/HMAH" "src/codesign/mapping/ACO/HMAH/Heuristics" "src/codesign/mapping/TS" "src/codesign/mapping/utility" "src/codesign/mapping/KLFM" "src/codesign/mapping/BOA" "src/codesign/mapping/SA" "src/codesign/mapping/GA" "src/codesign/mapping/static" "src/codesign/mapping/ILP" "src/codesign/annotations" "src/codesign/Metrics" "src/codesign/Metrics/Static" "src/codesign/Metrics/compare_models" "src/codesign/Metrics/TLM" "src/codesign/Metrics/Mapping" "src/codesign/Metrics/Dynamic" "src/codesign/Metrics/Dynamic/policies" "src/codesign/Metrics/RTL" "src/codesign/platform_generation" "src/intermediate_representations" "src/intermediate_representations/actor_graphs" "src/intermediate_representations/actor_graphs/sdf_graphs" "src/intermediate_representations/actor_graphs/task_graphs" "src/intermediate_representations/mapping_annotations" "src/polixml" "src/pragma" "src/HLS" "src/HLS/vcd" "src/HLS/architecture_creation" "src/HLS/architecture_creation/datapath_creation" "src/HLS/architecture_creation/controller_creation" "src/HLS/architecture_creation/controller_creation/algorithms" "src/HLS/interface" "src/HLS/interface/FSL" "src/HLS/interface/AXI" "src/HLS/interface/minimal" "src/HLS/interface/WB4" "src/HLS/interface/NPI" "src/HLS/module_generator" "src/HLS/chaining" "src/HLS/chaining/algorithms" "src/HLS/module_allocation" "src/HLS/hls_flow" "src/HLS/hls_flow/synthesis" "src/HLS/hls_flow/design_space_exploration" "src/HLS/hls_flow/design_space_exploration/ACO" "src/HLS/hls_flow/design_space_exploration/TS" "src/HLS/hls_flow/design_space_exploration/GRASP" "src/HLS/hls_flow/design_space_exploration/common" "src/HLS/hls_flow/design_space_exploration/SA" "src/HLS/hls_flow/design_space_exploration/GA" "src/HLS/stg" "src/HLS/liveness" "src/HLS/liveness/algorithms" "src/HLS/export" "src/HLS/virtual_components" "src/HLS/backend" "src/HLS/function_allocation" "src/HLS/evaluation" "src/HLS/evaluation/linear" "src/HLS/evaluation/statistical" "src/HLS/evaluation/exact" "src/HLS/binding" "src/HLS/binding/module" "src/HLS/binding/module/algorithms" "src/HLS/binding/register" "src/HLS/binding/register/algorithms" "src/HLS/binding/interconnection" "src/HLS/binding/interconnection/types" "src/HLS/binding/interconnection/algorithms" "src/HLS/binding/storage_value_insertion" "src/HLS/binding/storage_value_insertion/algorithms" "src/HLS/memory" "src/HLS/memory/algorithms" "src/HLS/simulation" "src/HLS/scheduling" "src/HLS/scheduling/ilp_scheduling" "src/HLS/scheduling/silp_scheduling" "src/HLS/scheduling/newilp_scheduling" "src/utility" "src/utility/probability_distribution" "src/bdd" "src/parser" "src/parser/vcd" "src/parser/bench" "src/parser/machine" "src/parser/polixml" "src/parser/profiling_analysis" "src/parser/TGFF" "src/parser/pragma" "src/parser/text_data" "src/parser/aiger" "src/parser/edif" "src/parser/sdf3" "src/parser/treegcc" "src/parser/csv" "src/parser/ip_xact" "src/parser/rtlgcc" "src/parser/psplib" "src/parser/estimation" "src/parser/data_xml" "src/parser/blif" "src/parser/boolean" "src/algorithms" "src/algorithms/pattern_matching" "src/algorithms/pattern_matching/doc" "src/algorithms/regressors" "src/algorithms/regressors/preprocessing" "src/algorithms/dominance" "src/algorithms/set_helper" "src/algorithms/clique_covering" "src/algorithms/evaluation" "src/algorithms/clustering" "src/algorithms/bipartite_matching" "src/algorithms/boolean_functions" "src/algorithms/graph_helpers" "src/algorithms/graph_helpers/bsg_helpers" "src/algorithms/loops_detection" "src/ip_xact" "src/wrapper" "src/wrapper/synthesis" "src/wrapper/synthesis/lattice" "src/wrapper/synthesis/xilinx" "src/wrapper/synthesis/xilinx/ise" "src/wrapper/synthesis/xilinx/structural" "src/wrapper/synthesis/xilinx/edk" "src/wrapper/synthesis/xilinx/edk/sample" "src/wrapper/synthesis/abc" "src/wrapper/synthesis/altera" "src/wrapper/synthesis/synopsys" "src/wrapper/synthesis/synopsys/design_compiler" "src/wrapper/synthesis/synopsys/primetime" "src/wrapper/synthesis/synopsys/core_tools" "src/wrapper/synthesis/synopsys/library_compiler" "src/wrapper/synthesis/synopsys/formality" "src/wrapper/synthesis/cadence" "src/wrapper/synthesis/cadence/soc_encounter" "src/wrapper/synthesis/design_optimizer" "src/wrapper/synthesis/nangate" "src/wrapper/synthesis/nangate/design_optimizer" "src/wrapper/synthesis/nangate/library_creator" "src/wrapper/treegcc" "src/wrapper/R" "src/wrapper/target_architectures" "src/wrapper/target_architectures/tsim" "src/wrapper/target_architectures/leon3" "src/wrapper/target_architectures/SimIt" "src/wrapper/target_architectures/a3" "src/wrapper/target_architectures/diopsis" "src/wrapper/target_architectures/mppb" "src/wrapper/simulation" "src/wrapper/simulation/verilator" "src/wrapper/simulation/modelsim" "src/wrapper/simulation/xsim" "src/wrapper/simulation/isim" "src/wrapper/simulation/icarus" "src/wrapper/flopoco" "src/wrapper/NeuralNetwork" "src/rtl" "src/design_flows" "src/design_flows/codesign" "src/design_flows/codesign/partitioning" "src/design_flows/codesign/partitioning/metric_partitioning" "src/design_flows/codesign/partitioning/graph_partitioning" "src/design_flows/codesign/partitioning/graph_partitioning/models" "src/design_flows/codesign/partitioning/graph_partitioning/models/Fork_Join" "src/design_flows/codesign/partitioning/graph_partitioning/utility" "src/design_flows/codesign/partitioning/graph_partitioning/algorithms" "src/design_flows/codesign/partitioning/graph_partitioning/partFlow" "src/design_flows/codesign/partitioning/graph_partitioning/sdf_design_flow_steps" "src/design_flows/codesign/partitioning/graph_partitioning/transformations" "src/design_flows/codesign/mapping" "src/design_flows/codesign/mapping/ACO" "src/design_flows/codesign/mapping/ACO/MAH" "src/design_flows/codesign/mapping/ACO/MAH/Heuristics" "src/design_flows/codesign/mapping/ACO/CyclicMAH" "src/design_flows/codesign/mapping/ACO/CyclicMAH/Heuristics" "src/design_flows/codesign/mapping/ACO/HMAH" "src/design_flows/codesign/mapping/ACO/HMAH/Heuristics" "src/design_flows/codesign/mapping/TS" "src/design_flows/codesign/mapping/utility" "src/design_flows/codesign/mapping/KLFM" "src/design_flows/codesign/mapping/BOA" "src/design_flows/codesign/mapping/SA" "src/design_flows/codesign/mapping/GA" "src/design_flows/codesign/mapping/static" "src/design_flows/codesign/mapping/ILP" "src/design_flows/codesign/annotations" "src/design_flows/codesign/Metrics" "src/design_flows/codesign/Metrics/Static" "src/design_flows/codesign/Metrics/compare_models" "src/design_flows/codesign/Metrics/TLM" "src/design_flows/codesign/Metrics/Mapping" "src/design_flows/codesign/Metrics/Dynamic" "src/design_flows/codesign/Metrics/Dynamic/policies" "src/design_flows/codesign/Metrics/RTL" "src/design_flows/codesign/estimation" "src/design_flows/codesign/platform_generation" "src/design_flows/backend" "src/design_flows/backend/ToC" "src/design_flows/backend/ToC/progModels" "src/design_flows/backend/ToC/source_code_writers" "src/design_flows/backend/ToHDL" "src/design_flows/backend/ToHDL/writer" "src/design_flows/backend/ToDataFile" "src/ilp" "src/constants" "src/backend" "src/backend/ToC" "src/backend/ToC/progModels" "src/backend/ToC/source_code_writers" "src/backend/ToHDL" "src/backend/ToHDL/writer" "src/backend/ToDataFile" "src/behavior" "src/circuit" "src/circuit/edif" "src/circuit/aig" "src/design_analysis" "src/task_graph" "src/task_graph/Estimation" "src/graph" "src/logic_synthesis" "src/logic_synthesis/logic_factoring" "src/logic_synthesis/logic_factoring/algorithms" "src/logic_synthesis/regularity" "src/logic_synthesis/regularity/tester" "src/logic_synthesis/regularity/tester/structural" "src/logic_synthesis/regularity/algorithms" "src/logic_synthesis/placement" "src/logic_synthesis/placement/models" "src/logic_synthesis/placement/algorithms" "src/logic_synthesis/placement/algorithms/representation" "src/logic_synthesis/placement/algorithms/representation/encodings" "src/logic_synthesis/utility" "src/logic_synthesis/netlist_interface_api" "src/logic_synthesis/technology_mapping" "src/logic_synthesis/technology_mapping/extraction" "src/logic_synthesis/technology_mapping/extraction/algorithms" "src/logic_synthesis/technology_mapping/covering" "src/logic_synthesis/technology_mapping/covering/metrics" "src/logic_synthesis/technology_mapping/covering/algorithms" "src/logic_synthesis/technology_mapping/algorithms" "src/logic_synthesis/technology_mapping/library_management" "src/logic_synthesis/technology_mapping/library_management/variant_generation" "src/logic_synthesis/technology_mapping/library_management/variant_generation/algorithms" "src/logic_synthesis/technology_mapping/library_management/algorithms" "src/logic_synthesis/technology_mapping/library_management/algorithms/GA" "src/logic_synthesis/technology_mapping/library_management/library_reduction" "src/logic_synthesis/technology_mapping/library_management/library_reduction/algorithms" "src/logic_synthesis/technology_mapping/decomposition" "src/logic_synthesis/technology_mapping/decomposition/algorithms" "src/logic_synthesis/testing" "src/logic_synthesis/testing/cuda_fault_simulation" "src/logic_synthesis/testing/cuda_fault_simulation/cuda" "src/logic_synthesis/library_optimization" "src/logic_synthesis/2lev" "src/logic_synthesis/2lev/m4" "src/logic_synthesis/2lev/autom4te.cache" "src/logic_synthesis/2lev/src" "src/logic_synthesis/2lev/src/tigre" "src/logic_synthesis/2lev/src/mincov" "src/logic_synthesis/2lev/src/sparse" "src/logic_synthesis/2lev/src/c-core" "src/technology" "src/technology/virtual_library" "src/technology/virtual_library/configurable_blocks" "src/technology/virtual_library/compound_gates" "src/technology/virtual_library/standard_cells" "src/technology/utility" "src/technology/target_technology" "src/technology/target_technology/FPGA" "src/technology/target_technology/CMOS" "src/technology/physical_library" "src/technology/physical_library/models" "src/technology/physical_library/models/time" "src/technology/physical_library/models/area" "src/technology/physical_library/models/layout" "src/technology/physical_library/models/wire" "src/technology/characterization" "src/technology/characterization/wirelength" "src/technology/characterization/time" "src/technology/characterization/time/models" "src/technology/characterization/time/timing_analysis" "src/technology/characterization/area" "src/technology/target_device" "src/technology/target_device/FPGA" "src/technology/target_device/IC" "src/tree" "../build/config_headers"))
           (setq project-include-dir
                 (mapcar
                  (lambda
                    (dir)
                    (expand-file-name dir
                                      (projectile-project-root)))
                  project-include-dir)))))))
