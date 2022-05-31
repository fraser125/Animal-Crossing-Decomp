lbl_804069C0:
/* 804069C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804069C4  7C 08 02 A6 */	mflr r0
/* 804069C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804069CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804069D0  7C 7F 1B 78 */	mr r31, r3
/* 804069D4  38 61 00 08 */	addi r3, r1, 8
/* 804069D8  4B FF FD 45 */	bl lbRTC_GetTime
/* 804069DC  7F E3 FB 78 */	mr r3, r31
/* 804069E0  38 81 00 08 */	addi r4, r1, 8
/* 804069E4  4B FF FF 31 */	bl lbRTC_IsOverTime
/* 804069E8  20 03 00 01 */	subfic r0, r3, 1
/* 804069EC  7C 00 00 34 */	cntlzw r0, r0
/* 804069F0  54 03 D9 7E */	srwi r3, r0, 5
/* 804069F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804069F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804069FC  7C 08 03 A6 */	mtlr r0
/* 80406A00  38 21 00 20 */	addi r1, r1, 0x20
/* 80406A04  4E 80 00 20 */	blr 
