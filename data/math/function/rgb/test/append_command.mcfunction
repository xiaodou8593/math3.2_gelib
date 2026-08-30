#math:test/append_command
# math:test/calc_loop调用

$data modify storage math:io test_commands append value \
	"particle minecraft:trail{target:$(xyz), color:$(rgb_list), duration:$(duration)} ~$(x) ~$(y) ~$(z)"