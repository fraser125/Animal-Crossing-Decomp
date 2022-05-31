lbl_80413590:
/* 80413590  38 A0 00 00 */	li r5, 0
/* 80413594  3C 80 80 41 */	lis r4, aBALL_process_ground_water@ha /* 0x804135AC@ha */
/* 80413598  98 A3 01 08 */	stb r5, 0x108(r3)
/* 8041359C  38 04 35 AC */	addi r0, r4, aBALL_process_ground_water@l /* 0x804135AC@l */
/* 804135A0  B0 A3 01 FC */	sth r5, 0x1fc(r3)
/* 804135A4  90 03 01 E0 */	stw r0, 0x1e0(r3)
/* 804135A8  4E 80 00 20 */	blr 
