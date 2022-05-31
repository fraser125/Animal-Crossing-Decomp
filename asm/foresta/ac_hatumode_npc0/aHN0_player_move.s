lbl_8052B748:
/* 8052B748  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052B74C  7C 08 02 A6 */	mflr r0
/* 8052B750  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8052B754  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052B758  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052B75C  7C 9F 23 78 */	mr r31, r4
/* 8052B760  93 C1 00 08 */	stw r30, 8(r1)
/* 8052B764  7C 7E 1B 78 */	mr r30, r3
/* 8052B768  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 8052B76C  3C 63 00 02 */	addis r3, r3, 2
/* 8052B770  88 9E 09 A9 */	lbz r4, 0x9a9(r30)
/* 8052B774  80 A3 60 D0 */	lwz r5, 0x60d0(r3)
/* 8052B778  7F E3 FB 78 */	mr r3, r31
/* 8052B77C  81 85 00 0C */	lwz r12, 0xc(r5)
/* 8052B780  7D 89 03 A6 */	mtctr r12
/* 8052B784  4E 80 04 21 */	bctrl 
/* 8052B788  2C 03 00 00 */	cmpwi r3, 0
/* 8052B78C  41 82 00 28 */	beq lbl_8052B7B4
/* 8052B790  88 BE 09 A2 */	lbz r5, 0x9a2(r30)
/* 8052B794  7F C3 F3 78 */	mr r3, r30
/* 8052B798  7F E4 FB 78 */	mr r4, r31
/* 8052B79C  38 A5 00 01 */	addi r5, r5, 1
/* 8052B7A0  98 BE 09 A2 */	stb r5, 0x9a2(r30)
/* 8052B7A4  48 00 02 A5 */	bl aHN0_setup_think_proc
/* 8052B7A8  88 7E 09 A9 */	lbz r3, 0x9a9(r30)
/* 8052B7AC  38 03 00 01 */	addi r0, r3, 1
/* 8052B7B0  98 1E 09 A9 */	stb r0, 0x9a9(r30)
lbl_8052B7B4:
/* 8052B7B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052B7B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052B7BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8052B7C0  7C 08 03 A6 */	mtlr r0
/* 8052B7C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8052B7C8  4E 80 00 20 */	blr 
