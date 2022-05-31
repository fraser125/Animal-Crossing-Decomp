lbl_804A0454:
/* 804A0454  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A0458  7C 08 02 A6 */	mflr r0
/* 804A045C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A0460  38 00 00 00 */	li r0, 0
/* 804A0464  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804A0468  7C 9F 23 78 */	mr r31, r4
/* 804A046C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804A0470  7C 7E 1B 78 */	mr r30, r3
/* 804A0474  90 03 01 94 */	stw r0, 0x194(r3)
/* 804A0478  90 03 01 98 */	stw r0, 0x198(r3)
/* 804A047C  4B FF FE 5D */	bl aSM_GetNowBlockNumber
/* 804A0480  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 804A0484  38 61 00 08 */	addi r3, r1, 8
/* 804A0488  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 804A048C  90 81 00 08 */	stw r4, 8(r1)
/* 804A0490  90 01 00 0C */	stw r0, 0xc(r1)
/* 804A0494  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 804A0498  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A049C  4B FF F9 41 */	bl func_8049FDDC
/* 804A04A0  90 7E 01 74 */	stw r3, 0x174(r30)
/* 804A04A4  7F C3 F3 78 */	mr r3, r30
/* 804A04A8  4B FF FD DD */	bl aSM_SecureManekinSubActor
/* 804A04AC  7F C3 F3 78 */	mr r3, r30
/* 804A04B0  7F E4 FB 78 */	mr r4, r31
/* 804A04B4  4B FF F9 D9 */	bl aSM_SecureManakinBank
/* 804A04B8  7F C3 F3 78 */	mr r3, r30
/* 804A04BC  4B FF FE 91 */	bl aSM_DmaManekinTexPal
/* 804A04C0  7F C3 F3 78 */	mr r3, r30
/* 804A04C4  38 80 00 00 */	li r4, 0
/* 804A04C8  4B FF FF 2D */	bl aSM_SetClipProc
/* 804A04CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A04D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804A04D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804A04D8  7C 08 03 A6 */	mtlr r0
/* 804A04DC  38 21 00 20 */	addi r1, r1, 0x20
/* 804A04E0  4E 80 00 20 */	blr 
