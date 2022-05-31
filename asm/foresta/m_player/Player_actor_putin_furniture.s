lbl_804D7458:
/* 804D7458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D745C  7C 08 02 A6 */	mflr r0
/* 804D7460  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D7464  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 804D7468  28 00 1B A8 */	cmplwi r0, 0x1ba8
/* 804D746C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D7470  7C 7F 1B 78 */	mr r31, r3
/* 804D7474  41 80 00 0C */	blt lbl_804D7480
/* 804D7478  28 00 1B C7 */	cmplwi r0, 0x1bc7
/* 804D747C  40 81 00 24 */	ble lbl_804D74A0
lbl_804D7480:
/* 804D7480  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 804D7484  28 00 1D 88 */	cmplwi r0, 0x1d88
/* 804D7488  41 80 00 0C */	blt lbl_804D7494
/* 804D748C  28 00 1D A7 */	cmplwi r0, 0x1da7
/* 804D7490  40 81 00 10 */	ble lbl_804D74A0
lbl_804D7494:
/* 804D7494  7C 83 23 78 */	mr r3, r4
/* 804D7498  7C A4 2B 78 */	mr r4, r5
/* 804D749C  4B FF FE C5 */	bl Player_actor_putin
lbl_804D74A0:
/* 804D74A0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804D74A4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804D74A8  3C 63 00 02 */	addis r3, r3, 2
/* 804D74AC  80 63 60 8C */	lwz r3, 0x608c(r3)
/* 804D74B0  28 03 00 00 */	cmplwi r3, 0
/* 804D74B4  41 82 00 14 */	beq lbl_804D74C8
/* 804D74B8  81 83 00 0C */	lwz r12, 0xc(r3)
/* 804D74BC  7F E3 FB 78 */	mr r3, r31
/* 804D74C0  7D 89 03 A6 */	mtctr r12
/* 804D74C4  4E 80 04 21 */	bctrl 
lbl_804D74C8:
/* 804D74C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D74CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D74D0  7C 08 03 A6 */	mtlr r0
/* 804D74D4  38 21 00 10 */	addi r1, r1, 0x10
/* 804D74D8  4E 80 00 20 */	blr 
