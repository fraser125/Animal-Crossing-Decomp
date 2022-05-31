lbl_80391960:
/* 80391960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80391964  7C 08 02 A6 */	mflr r0
/* 80391968  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039196C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80391970  7C 7F 1B 78 */	mr r31, r3
/* 80391974  A0 1F 00 00 */	lhz r0, 0(r31)
/* 80391978  88 63 00 00 */	lbz r3, 0(r3)
/* 8039197C  88 BF 00 01 */	lbz r5, 1(r31)
/* 80391980  54 04 DE FE */	rlwinm r4, r0, 0x1b, 0x1b, 0x1f
/* 80391984  88 DF 00 02 */	lbz r6, 2(r31)
/* 80391988  54 63 F6 FE */	rlwinm r3, r3, 0x1e, 0x1b, 0x1f
/* 8039198C  A0 1F 00 02 */	lhz r0, 2(r31)
/* 80391990  54 A5 06 FE */	clrlwi r5, r5, 0x1b
/* 80391994  54 C6 EE FE */	rlwinm r6, r6, 0x1d, 0x1b, 0x1f
/* 80391998  54 07 D6 FE */	rlwinm r7, r0, 0x1a, 0x1b, 0x1f
/* 8039199C  4B FF 98 21 */	bl mCoBG_GetMaxOffset
/* 803919A0  88 7F 00 00 */	lbz r3, 0(r31)
/* 803919A4  A0 1F 00 00 */	lhz r0, 0(r31)
/* 803919A8  88 BF 00 01 */	lbz r5, 1(r31)
/* 803919AC  54 63 F6 FE */	rlwinm r3, r3, 0x1e, 0x1b, 0x1f
/* 803919B0  88 DF 00 02 */	lbz r6, 2(r31)
/* 803919B4  54 04 DE FE */	rlwinm r4, r0, 0x1b, 0x1b, 0x1f
/* 803919B8  A0 1F 00 02 */	lhz r0, 2(r31)
/* 803919BC  54 A5 06 FE */	clrlwi r5, r5, 0x1b
/* 803919C0  54 C6 EE FE */	rlwinm r6, r6, 0x1d, 0x1b, 0x1f
/* 803919C4  54 07 D6 FE */	rlwinm r7, r0, 0x1a, 0x1b, 0x1f
/* 803919C8  4B FF 98 59 */	bl mCoBG_GetMinOffset
/* 803919CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803919D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803919D4  7C 08 03 A6 */	mtlr r0
/* 803919D8  38 21 00 10 */	addi r1, r1, 0x10
/* 803919DC  4E 80 00 20 */	blr 
