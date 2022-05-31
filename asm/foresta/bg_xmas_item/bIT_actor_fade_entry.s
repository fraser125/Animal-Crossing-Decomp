lbl_804C65CC:
/* 804C65CC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804C65D0  7C 08 02 A6 */	mflr r0
/* 804C65D4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 804C65D8  38 E0 00 FF */	li r7, 0xff
/* 804C65DC  90 01 00 44 */	stw r0, 0x44(r1)
/* 804C65E0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 804C65E4  3C A5 00 02 */	addis r5, r5, 2
/* 804C65E8  38 00 00 03 */	li r0, 3
/* 804C65EC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804C65F0  3B E0 00 00 */	li r31, 0
/* 804C65F4  80 A5 60 80 */	lwz r5, 0x6080(r5)
/* 804C65F8  80 A5 00 00 */	lwz r5, 0(r5)
/* 804C65FC  3C C5 00 01 */	addis r6, r5, 1
/* 804C6600  7C 09 03 A6 */	mtctr r0
/* 804C6604  38 C6 39 9C */	addi r6, r6, 0x399c
lbl_804C6608:
/* 804C6608  88 06 00 0F */	lbz r0, 0xf(r6)
/* 804C660C  28 00 00 00 */	cmplwi r0, 0
/* 804C6610  40 82 00 0C */	bne lbl_804C661C
/* 804C6614  7C DF 33 78 */	mr r31, r6
/* 804C6618  48 00 00 2C */	b lbl_804C6644
lbl_804C661C:
/* 804C661C  28 00 00 01 */	cmplwi r0, 1
/* 804C6620  40 82 00 1C */	bne lbl_804C663C
/* 804C6624  88 A6 00 0E */	lbz r5, 0xe(r6)
/* 804C6628  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 804C662C  7C 05 00 40 */	cmplw r5, r0
/* 804C6630  40 80 00 0C */	bge lbl_804C663C
/* 804C6634  7C A7 2B 78 */	mr r7, r5
/* 804C6638  7C DF 33 78 */	mr r31, r6
lbl_804C663C:
/* 804C663C  38 C6 00 14 */	addi r6, r6, 0x14
/* 804C6640  42 00 FF C8 */	bdnz lbl_804C6608
lbl_804C6644:
/* 804C6644  28 1F 00 00 */	cmplwi r31, 0
/* 804C6648  41 82 00 A0 */	beq lbl_804C66E8
/* 804C664C  38 A0 00 01 */	li r5, 1
/* 804C6650  38 00 00 FF */	li r0, 0xff
/* 804C6654  98 BF 00 0F */	stb r5, 0xf(r31)
/* 804C6658  B0 7F 00 0C */	sth r3, 0xc(r31)
/* 804C665C  7F E3 FB 78 */	mr r3, r31
/* 804C6660  98 1F 00 0E */	stb r0, 0xe(r31)
/* 804C6664  80 A4 00 00 */	lwz r5, 0(r4)
/* 804C6668  80 04 00 04 */	lwz r0, 4(r4)
/* 804C666C  90 A1 00 20 */	stw r5, 0x20(r1)
/* 804C6670  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C6674  80 04 00 08 */	lwz r0, 8(r4)
/* 804C6678  38 81 00 20 */	addi r4, r1, 0x20
/* 804C667C  90 01 00 28 */	stw r0, 0x28(r1)
/* 804C6680  4B ED EE BD */	bl mFI_Wpos2UtCenterWpos
/* 804C6684  80 9F 00 00 */	lwz r4, 0(r31)
/* 804C6688  3C 60 80 64 */	lis r3, lit_664@ha /* 0x806461E4@ha */
/* 804C668C  80 1F 00 04 */	lwz r0, 4(r31)
/* 804C6690  C0 23 61 E4 */	lfs f1, lit_664@l(r3)  /* 0x806461E4@l */
/* 804C6694  38 61 00 14 */	addi r3, r1, 0x14
/* 804C6698  90 81 00 14 */	stw r4, 0x14(r1)
/* 804C669C  90 01 00 18 */	stw r0, 0x18(r1)
/* 804C66A0  80 1F 00 08 */	lwz r0, 8(r31)
/* 804C66A4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804C66A8  4B EC 92 F1 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804C66AC  D0 3F 00 04 */	stfs f1, 4(r31)
/* 804C66B0  38 00 00 00 */	li r0, 0
/* 804C66B4  38 81 00 08 */	addi r4, r1, 8
/* 804C66B8  38 60 00 00 */	li r3, 0
/* 804C66BC  98 1F 00 10 */	stb r0, 0x10(r31)
/* 804C66C0  38 A0 00 01 */	li r5, 1
/* 804C66C4  80 DF 00 00 */	lwz r6, 0(r31)
/* 804C66C8  80 1F 00 04 */	lwz r0, 4(r31)
/* 804C66CC  90 C1 00 08 */	stw r6, 8(r1)
/* 804C66D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C66D4  80 1F 00 08 */	lwz r0, 8(r31)
/* 804C66D8  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C66DC  4B EE 11 55 */	bl mFI_SetFG_common
/* 804C66E0  38 60 00 01 */	li r3, 1
/* 804C66E4  48 00 00 08 */	b lbl_804C66EC
lbl_804C66E8:
/* 804C66E8  38 60 00 00 */	li r3, 0
lbl_804C66EC:
/* 804C66EC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804C66F0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804C66F4  7C 08 03 A6 */	mtlr r0
/* 804C66F8  38 21 00 40 */	addi r1, r1, 0x40
/* 804C66FC  4E 80 00 20 */	blr 
