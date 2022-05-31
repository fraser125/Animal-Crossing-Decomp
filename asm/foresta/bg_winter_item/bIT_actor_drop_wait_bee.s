lbl_804C26A0:
/* 804C26A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C26A4  7C 08 02 A6 */	mflr r0
/* 804C26A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C26AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804C26B0  7C 7F 1B 78 */	mr r31, r3
/* 804C26B4  A8 63 00 90 */	lha r3, 0x90(r3)
/* 804C26B8  38 03 FF FF */	addi r0, r3, -1
/* 804C26BC  B0 1F 00 90 */	sth r0, 0x90(r31)
/* 804C26C0  A8 1F 00 90 */	lha r0, 0x90(r31)
/* 804C26C4  2C 00 00 00 */	cmpwi r0, 0
/* 804C26C8  40 82 00 30 */	bne lbl_804C26F8
/* 804C26CC  80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 804C26D0  28 03 00 00 */	cmplwi r3, 0
/* 804C26D4  41 82 00 10 */	beq lbl_804C26E4
/* 804C26D8  38 63 00 28 */	addi r3, r3, 0x28
/* 804C26DC  38 9F 00 14 */	addi r4, r31, 0x14
/* 804C26E0  4B EF 87 DD */	bl xyz_t_move
lbl_804C26E4:
/* 804C26E4  38 00 00 78 */	li r0, 0x78
/* 804C26E8  3C 60 80 4C */	lis r3, bIT_actor_drop_move_wait@ha /* 0x804C270C@ha */
/* 804C26EC  B0 1F 00 88 */	sth r0, 0x88(r31)
/* 804C26F0  38 03 27 0C */	addi r0, r3, bIT_actor_drop_move_wait@l /* 0x804C270C@l */
/* 804C26F4  90 1F 00 00 */	stw r0, 0(r31)
lbl_804C26F8:
/* 804C26F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C26FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804C2700  7C 08 03 A6 */	mtlr r0
/* 804C2704  38 21 00 10 */	addi r1, r1, 0x10
/* 804C2708  4E 80 00 20 */	blr 
