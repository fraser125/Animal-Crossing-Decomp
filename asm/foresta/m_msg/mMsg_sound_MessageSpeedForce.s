lbl_803C2208:
/* 803C2208  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C220C  7C 08 02 A6 */	mflr r0
/* 803C2210  FC 00 08 1E */	fctiwz f0, f1
/* 803C2214  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C2218  D8 01 00 08 */	stfd f0, 8(r1)
/* 803C221C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803C2220  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803C2224  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 803C2228  38 1F 00 01 */	addi r0, r31, 1
/* 803C222C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 803C2230  41 82 00 34 */	beq lbl_803C2264
/* 803C2234  48 26 BC B1 */	bl sAdo_MessageSpeedGet
/* 803C2238  38 9F 00 01 */	addi r4, r31, 1
/* 803C223C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 803C2240  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 803C2244  7C 00 18 40 */	cmplw r0, r3
/* 803C2248  41 82 00 0C */	beq lbl_803C2254
/* 803C224C  7C 83 23 78 */	mr r3, r4
/* 803C2250  48 26 BC 75 */	bl sAdo_MessageSpeed
lbl_803C2254:
/* 803C2254  3C 60 80 65 */	lis r3, Sound_Now_MessageSpeed@ha /* 0x80657224@ha */
/* 803C2258  38 1F 00 01 */	addi r0, r31, 1
/* 803C225C  98 03 72 24 */	stb r0, Sound_Now_MessageSpeed@l(r3)  /* 0x80657224@l */
/* 803C2260  48 00 00 18 */	b lbl_803C2278
lbl_803C2264:
/* 803C2264  38 60 00 01 */	li r3, 1
/* 803C2268  48 26 BC 5D */	bl sAdo_MessageSpeed
/* 803C226C  3C 60 80 65 */	lis r3, Sound_Now_MessageSpeed@ha /* 0x80657224@ha */
/* 803C2270  38 00 00 01 */	li r0, 1
/* 803C2274  98 03 72 24 */	stb r0, Sound_Now_MessageSpeed@l(r3)  /* 0x80657224@l */
lbl_803C2278:
/* 803C2278  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C227C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803C2280  7C 08 03 A6 */	mtlr r0
/* 803C2284  38 21 00 20 */	addi r1, r1, 0x20
/* 803C2288  4E 80 00 20 */	blr 
