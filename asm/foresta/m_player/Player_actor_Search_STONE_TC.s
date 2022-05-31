lbl_804DA550:
/* 804DA550  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DA554  7C 08 02 A6 */	mflr r0
/* 804DA558  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DA55C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804DA560  7C 9F 23 78 */	mr r31, r4
/* 804DA564  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804DA568  7C 7E 1B 78 */	mr r30, r3
/* 804DA56C  38 61 00 08 */	addi r3, r1, 8
/* 804DA570  80 84 00 00 */	lwz r4, 0(r4)
/* 804DA574  80 1F 00 04 */	lwz r0, 4(r31)
/* 804DA578  90 81 00 08 */	stw r4, 8(r1)
/* 804DA57C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804DA580  80 1F 00 08 */	lwz r0, 8(r31)
/* 804DA584  90 01 00 10 */	stw r0, 0x10(r1)
/* 804DA588  4B EC CE A9 */	bl mFI_GetUnitFG
/* 804DA58C  28 03 00 00 */	cmplwi r3, 0
/* 804DA590  41 82 00 6C */	beq lbl_804DA5FC
/* 804DA594  A0 63 00 00 */	lhz r3, 0(r3)
/* 804DA598  38 00 00 00 */	li r0, 0
/* 804DA59C  28 03 00 6A */	cmplwi r3, 0x6a
/* 804DA5A0  41 80 00 0C */	blt lbl_804DA5AC
/* 804DA5A4  28 03 00 6E */	cmplwi r3, 0x6e
/* 804DA5A8  40 81 00 0C */	ble lbl_804DA5B4
lbl_804DA5AC:
/* 804DA5AC  28 03 00 6F */	cmplwi r3, 0x6f
/* 804DA5B0  40 82 00 08 */	bne lbl_804DA5B8
lbl_804DA5B4:
/* 804DA5B4  38 00 00 01 */	li r0, 1
lbl_804DA5B8:
/* 804DA5B8  2C 00 00 00 */	cmpwi r0, 0
/* 804DA5BC  41 82 00 40 */	beq lbl_804DA5FC
/* 804DA5C0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804DA5C4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804DA5C8  3C 63 00 02 */	addis r3, r3, 2
/* 804DA5CC  80 63 60 80 */	lwz r3, 0x6080(r3)
/* 804DA5D0  28 03 00 00 */	cmplwi r3, 0
/* 804DA5D4  41 82 00 28 */	beq lbl_804DA5FC
/* 804DA5D8  81 83 00 2C */	lwz r12, 0x2c(r3)
/* 804DA5DC  28 0C 00 00 */	cmplwi r12, 0
/* 804DA5E0  41 82 00 1C */	beq lbl_804DA5FC
/* 804DA5E4  7F E3 FB 78 */	mr r3, r31
/* 804DA5E8  A8 9E 00 DE */	lha r4, 0xde(r30)
/* 804DA5EC  7D 89 03 A6 */	mtctr r12
/* 804DA5F0  4E 80 04 21 */	bctrl 
/* 804DA5F4  38 60 00 01 */	li r3, 1
/* 804DA5F8  48 00 00 08 */	b lbl_804DA600
lbl_804DA5FC:
/* 804DA5FC  38 60 00 00 */	li r3, 0
lbl_804DA600:
/* 804DA600  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DA604  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804DA608  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804DA60C  7C 08 03 A6 */	mtlr r0
/* 804DA610  38 21 00 20 */	addi r1, r1, 0x20
/* 804DA614  4E 80 00 20 */	blr 
