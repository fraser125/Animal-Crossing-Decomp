lbl_804F7ABC:
/* 804F7ABC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F7AC0  7C 08 02 A6 */	mflr r0
/* 804F7AC4  3C A0 80 65 */	lis r5, lit_9522@ha /* 0x806484D0@ha */
/* 804F7AC8  38 83 0D 18 */	addi r4, r3, 0xd18
/* 804F7ACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F7AD0  C0 25 84 D0 */	lfs f1, lit_9522@l(r5)  /* 0x806484D0@l */
/* 804F7AD4  4B FF FE D1 */	bl Player_actor_lean_angle_scoop_common
/* 804F7AD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F7ADC  7C 08 03 A6 */	mtlr r0
/* 804F7AE0  38 21 00 10 */	addi r1, r1, 0x10
/* 804F7AE4  4E 80 00 20 */	blr 
