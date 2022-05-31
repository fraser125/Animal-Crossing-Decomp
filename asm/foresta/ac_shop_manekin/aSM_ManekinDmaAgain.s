lbl_804A0710:
/* 804A0710  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A0714  7C 08 02 A6 */	mflr r0
/* 804A0718  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A071C  39 61 00 20 */	addi r11, r1, 0x20
/* 804A0720  4B BF A7 AD */	bl func_8009AECC
/* 804A0724  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804A0728  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804A072C  3C 63 00 02 */	addis r3, r3, 2
/* 804A0730  80 63 60 6C */	lwz r3, 0x606c(r3)
/* 804A0734  28 03 00 00 */	cmplwi r3, 0
/* 804A0738  41 82 00 80 */	beq lbl_804A07B8
/* 804A073C  83 C3 00 00 */	lwz r30, 0(r3)
/* 804A0740  28 1E 00 00 */	cmplwi r30, 0
/* 804A0744  41 82 00 74 */	beq lbl_804A07B8
/* 804A0748  83 BE 01 74 */	lwz r29, 0x174(r30)
/* 804A074C  3B 60 00 00 */	li r27, 0
/* 804A0750  83 9E 01 78 */	lwz r28, 0x178(r30)
/* 804A0754  3B E0 00 00 */	li r31, 0
/* 804A0758  48 00 00 48 */	b lbl_804A07A0
lbl_804A075C:
/* 804A075C  7C 9C FA 14 */	add r4, r28, r31
/* 804A0760  38 00 00 00 */	li r0, 0
/* 804A0764  A0 C4 00 14 */	lhz r6, 0x14(r4)
/* 804A0768  80 64 00 18 */	lwz r3, 0x18(r4)
/* 804A076C  28 06 24 00 */	cmplwi r6, 0x2400
/* 804A0770  80 84 00 1C */	lwz r4, 0x1c(r4)
/* 804A0774  41 80 00 10 */	blt lbl_804A0784
/* 804A0778  28 06 24 FF */	cmplwi r6, 0x24ff
/* 804A077C  40 80 00 08 */	bge lbl_804A0784
/* 804A0780  38 00 00 01 */	li r0, 1
lbl_804A0784:
/* 804A0784  20 A0 00 00 */	subfic r5, r0, 0
/* 804A0788  38 06 DC 00 */	addi r0, r6, -9216
/* 804A078C  7C A5 29 10 */	subfe r5, r5, r5
/* 804A0790  7C 05 28 38 */	and r5, r0, r5
/* 804A0794  4B F3 90 39 */	bl mPlib_Load_PlayerTexAndPallet
/* 804A0798  3B 7B 00 01 */	addi r27, r27, 1
/* 804A079C  3B FF 00 54 */	addi r31, r31, 0x54
lbl_804A07A0:
/* 804A07A0  7C 1B E8 00 */	cmpw r27, r29
/* 804A07A4  41 80 FF B8 */	blt lbl_804A075C
/* 804A07A8  80 7E 01 94 */	lwz r3, 0x194(r30)
/* 804A07AC  38 A0 00 FF */	li r5, 0xff
/* 804A07B0  80 9E 01 98 */	lwz r4, 0x198(r30)
/* 804A07B4  4B F3 90 19 */	bl mPlib_Load_PlayerTexAndPallet
lbl_804A07B8:
/* 804A07B8  39 61 00 20 */	addi r11, r1, 0x20
/* 804A07BC  4B BF A7 5D */	bl func_8009AF18
/* 804A07C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A07C4  7C 08 03 A6 */	mtlr r0
/* 804A07C8  38 21 00 20 */	addi r1, r1, 0x20
/* 804A07CC  4E 80 00 20 */	blr 
