lbl_804DE82C:
/* 804DE82C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DE830  7C 08 02 A6 */	mflr r0
/* 804DE834  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DE838  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804DE83C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804DE840  7C 7E 1B 78 */	mr r30, r3
/* 804DE844  80 03 12 28 */	lwz r0, 0x1228(r3)
/* 804DE848  2C 00 00 00 */	cmpwi r0, 0
/* 804DE84C  41 82 00 8C */	beq lbl_804DE8D8
/* 804DE850  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804DE854  38 61 00 08 */	addi r3, r1, 8
/* 804DE858  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804DE85C  3C 84 00 02 */	addis r4, r4, 2
/* 804DE860  80 A4 61 3C */	lwz r5, 0x613c(r4)
/* 804DE864  38 84 61 20 */	addi r4, r4, 0x6120
/* 804DE868  3B E5 23 C4 */	addi r31, r5, 0x23c4
/* 804DE86C  4B F1 4B F5 */	bl mTM_set_renew_time
/* 804DE870  7F E3 FB 78 */	mr r3, r31
/* 804DE874  38 81 00 08 */	addi r4, r1, 8
/* 804DE878  4B F2 83 A9 */	bl lbRTC_GetIntervalDays2
/* 804DE87C  88 1F 00 05 */	lbz r0, 5(r31)
/* 804DE880  7C 00 07 74 */	extsb r0, r0
/* 804DE884  7C 00 18 51 */	subf. r0, r0, r3
/* 804DE888  40 81 00 48 */	ble lbl_804DE8D0
/* 804DE88C  7C 09 03 A6 */	mtctr r0
/* 804DE890  2C 00 00 00 */	cmpwi r0, 0
/* 804DE894  40 81 00 2C */	ble lbl_804DE8C0
lbl_804DE898:
/* 804DE898  88 7F 00 04 */	lbz r3, 4(r31)
/* 804DE89C  38 03 FF FF */	addi r0, r3, -1
/* 804DE8A0  98 1F 00 04 */	stb r0, 4(r31)
/* 804DE8A4  88 1F 00 04 */	lbz r0, 4(r31)
/* 804DE8A8  7C 00 07 75 */	extsb. r0, r0
/* 804DE8AC  40 80 00 10 */	bge lbl_804DE8BC
/* 804DE8B0  38 00 00 00 */	li r0, 0
/* 804DE8B4  98 1F 00 04 */	stb r0, 4(r31)
/* 804DE8B8  48 00 00 08 */	b lbl_804DE8C0
lbl_804DE8BC:
/* 804DE8BC  42 00 FF DC */	bdnz lbl_804DE898
lbl_804DE8C0:
/* 804DE8C0  80 01 00 08 */	lwz r0, 8(r1)
/* 804DE8C4  38 60 00 01 */	li r3, 1
/* 804DE8C8  90 1F 00 00 */	stw r0, 0(r31)
/* 804DE8CC  48 00 00 10 */	b lbl_804DE8DC
lbl_804DE8D0:
/* 804DE8D0  38 00 00 00 */	li r0, 0
/* 804DE8D4  90 1E 12 28 */	stw r0, 0x1228(r30)
lbl_804DE8D8:
/* 804DE8D8  38 60 00 00 */	li r3, 0
lbl_804DE8DC:
/* 804DE8DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DE8E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804DE8E4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804DE8E8  7C 08 03 A6 */	mtlr r0
/* 804DE8EC  38 21 00 20 */	addi r1, r1, 0x20
/* 804DE8F0  4E 80 00 20 */	blr 
