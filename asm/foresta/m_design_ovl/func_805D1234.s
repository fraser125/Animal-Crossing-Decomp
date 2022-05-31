lbl_805D1234:
/* 805D1234  38 00 00 10 */	li r0, 0x10
/* 805D1238  38 80 00 00 */	li r4, 0
/* 805D123C  38 A0 00 00 */	li r5, 0
/* 805D1240  7C 09 03 A6 */	mtctr r0
lbl_805D1244:
/* 805D1244  80 C3 00 00 */	lwz r6, 0(r3)
/* 805D1248  7D 26 2A 2E */	lhzx r9, r6, r5
/* 805D124C  55 20 04 21 */	rlwinm. r0, r9, 0, 0x10, 0x10
/* 805D1250  41 82 00 40 */	beq lbl_805D1290
/* 805D1254  55 20 B6 FE */	rlwinm r0, r9, 0x16, 0x1b, 0x1f
/* 805D1258  55 26 DE FE */	rlwinm r6, r9, 0x1b, 0x1b, 0x1f
/* 805D125C  1C E0 00 FF */	mulli r7, r0, 0xff
/* 805D1260  39 00 00 1F */	li r8, 0x1f
/* 805D1264  55 20 06 FE */	clrlwi r0, r9, 0x1b
/* 805D1268  7D 23 22 14 */	add r9, r3, r4
/* 805D126C  1C C6 00 FF */	mulli r6, r6, 0xff
/* 805D1270  7C E7 43 D6 */	divw r7, r7, r8
/* 805D1274  1C 00 00 FF */	mulli r0, r0, 0xff
/* 805D1278  98 E9 06 20 */	stb r7, 0x620(r9)
/* 805D127C  7C C6 43 D6 */	divw r6, r6, r8
/* 805D1280  7C 00 43 D6 */	divw r0, r0, r8
/* 805D1284  98 C9 06 21 */	stb r6, 0x621(r9)
/* 805D1288  98 09 06 22 */	stb r0, 0x622(r9)
/* 805D128C  48 00 00 2C */	b lbl_805D12B8
lbl_805D1290:
/* 805D1290  55 20 C7 3E */	rlwinm r0, r9, 0x18, 0x1c, 0x1f
/* 805D1294  55 26 E7 3E */	rlwinm r6, r9, 0x1c, 0x1c, 0x1f
/* 805D1298  1C E0 00 11 */	mulli r7, r0, 0x11
/* 805D129C  7D 03 22 14 */	add r8, r3, r4
/* 805D12A0  55 20 07 3E */	clrlwi r0, r9, 0x1c
/* 805D12A4  1C C6 00 11 */	mulli r6, r6, 0x11
/* 805D12A8  98 E8 06 20 */	stb r7, 0x620(r8)
/* 805D12AC  1C 00 00 11 */	mulli r0, r0, 0x11
/* 805D12B0  98 C8 06 21 */	stb r6, 0x621(r8)
/* 805D12B4  98 08 06 22 */	stb r0, 0x622(r8)
lbl_805D12B8:
/* 805D12B8  38 84 00 03 */	addi r4, r4, 3
/* 805D12BC  38 A5 00 02 */	addi r5, r5, 2
/* 805D12C0  42 00 FF 84 */	bdnz lbl_805D1244
/* 805D12C4  4E 80 00 20 */	blr 
