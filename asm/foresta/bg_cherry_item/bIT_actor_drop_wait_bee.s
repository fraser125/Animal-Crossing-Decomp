lbl_804B3824:
/* 804B3824  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804B3828  7C 08 02 A6 */	mflr r0
/* 804B382C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804B3830  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804B3834  7C 7F 1B 78 */	mr r31, r3
/* 804B3838  A8 63 00 90 */	lha r3, 0x90(r3)
/* 804B383C  38 03 FF FF */	addi r0, r3, -1
/* 804B3840  B0 1F 00 90 */	sth r0, 0x90(r31)
/* 804B3844  A8 1F 00 90 */	lha r0, 0x90(r31)
/* 804B3848  2C 00 00 00 */	cmpwi r0, 0
/* 804B384C  40 82 00 30 */	bne lbl_804B387C
/* 804B3850  80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 804B3854  28 03 00 00 */	cmplwi r3, 0
/* 804B3858  41 82 00 10 */	beq lbl_804B3868
/* 804B385C  38 63 00 28 */	addi r3, r3, 0x28
/* 804B3860  38 9F 00 14 */	addi r4, r31, 0x14
/* 804B3864  4B F0 76 59 */	bl xyz_t_move
lbl_804B3868:
/* 804B3868  38 00 00 78 */	li r0, 0x78
/* 804B386C  3C 60 80 4B */	lis r3, bIT_actor_drop_move_wait@ha /* 0x804B3890@ha */
/* 804B3870  B0 1F 00 88 */	sth r0, 0x88(r31)
/* 804B3874  38 03 38 90 */	addi r0, r3, bIT_actor_drop_move_wait@l /* 0x804B3890@l */
/* 804B3878  90 1F 00 00 */	stw r0, 0(r31)
lbl_804B387C:
/* 804B387C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804B3880  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804B3884  7C 08 03 A6 */	mtlr r0
/* 804B3888  38 21 00 10 */	addi r1, r1, 0x10
/* 804B388C  4E 80 00 20 */	blr 
