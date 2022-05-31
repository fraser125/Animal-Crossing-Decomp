lbl_80533FB4:
/* 80533FB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80533FB8  7C 08 02 A6 */	mflr r0
/* 80533FBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80533FC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80533FC4  7C 9F 23 78 */	mr r31, r4
/* 80533FC8  93 C1 00 08 */	stw r30, 8(r1)
/* 80533FCC  7C 7E 1B 78 */	mr r30, r3
/* 80533FD0  81 83 09 6C */	lwz r12, 0x96c(r3)
/* 80533FD4  7D 89 03 A6 */	mtctr r12
/* 80533FD8  4E 80 04 21 */	bctrl 
/* 80533FDC  2C 03 00 01 */	cmpwi r3, 1
/* 80533FE0  40 82 00 18 */	bne lbl_80533FF8
/* 80533FE4  7F C3 F3 78 */	mr r3, r30
/* 80533FE8  4B FF A8 05 */	bl aNPC_setup_talk_end
/* 80533FEC  38 00 00 FF */	li r0, 0xff
/* 80533FF0  98 1E 07 F6 */	stb r0, 0x7f6(r30)
/* 80533FF4  48 00 00 30 */	b lbl_80534024
lbl_80533FF8:
/* 80533FF8  7F C3 F3 78 */	mr r3, r30
/* 80533FFC  4B FF A6 7D */	bl aNPC_check_feel_demoCode
/* 80534000  88 1E 07 F6 */	lbz r0, 0x7f6(r30)
/* 80534004  3C 60 80 6A */	lis r3, act_proc_3108@ha /* 0x806A264C@ha */
/* 80534008  38 A3 26 4C */	addi r5, r3, act_proc_3108@l /* 0x806A264C@l */
/* 8053400C  7F C3 F3 78 */	mr r3, r30
/* 80534010  54 00 10 3A */	slwi r0, r0, 2
/* 80534014  7F E4 FB 78 */	mr r4, r31
/* 80534018  7D 85 00 2E */	lwzx r12, r5, r0
/* 8053401C  7D 89 03 A6 */	mtctr r12
/* 80534020  4E 80 04 21 */	bctrl 
lbl_80534024:
/* 80534024  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80534028  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053402C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80534030  7C 08 03 A6 */	mtlr r0
/* 80534034  38 21 00 10 */	addi r1, r1, 0x10
/* 80534038  4E 80 00 20 */	blr 
