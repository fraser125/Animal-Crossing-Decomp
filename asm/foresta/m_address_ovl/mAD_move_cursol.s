lbl_805C22D8:
/* 805C22D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C22DC  7C 08 02 A6 */	mflr r0
/* 805C22E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C22E4  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805C22E8  80 A4 09 28 */	lwz r5, 0x928(r4)
/* 805C22EC  80 C4 09 94 */	lwz r6, 0x994(r4)
/* 805C22F0  54 A0 07 BD */	rlwinm. r0, r5, 0, 0x1e, 0x1e
/* 805C22F4  41 82 00 10 */	beq lbl_805C2304
/* 805C22F8  38 80 FF FF */	li r4, -1
/* 805C22FC  4B FF FF 45 */	bl mAD_move_between
/* 805C2300  48 00 00 8C */	b lbl_805C238C
lbl_805C2304:
/* 805C2304  54 A0 07 7B */	rlwinm. r0, r5, 0, 0x1d, 0x1d
/* 805C2308  41 82 00 40 */	beq lbl_805C2348
/* 805C230C  88 06 00 03 */	lbz r0, 3(r6)
/* 805C2310  88 A6 00 05 */	lbz r5, 5(r6)
/* 805C2314  7C 86 02 14 */	add r4, r6, r0
/* 805C2318  88 84 00 08 */	lbz r4, 8(r4)
/* 805C231C  38 04 FF FF */	addi r0, r4, -1
/* 805C2320  7C 05 00 00 */	cmpw r5, r0
/* 805C2324  40 80 00 18 */	bge lbl_805C233C
/* 805C2328  38 05 00 01 */	addi r0, r5, 1
/* 805C232C  38 60 00 01 */	li r3, 1
/* 805C2330  98 06 00 05 */	stb r0, 5(r6)
/* 805C2334  48 06 B9 D1 */	bl sAdo_SysTrgStart
/* 805C2338  48 00 00 54 */	b lbl_805C238C
lbl_805C233C:
/* 805C233C  38 80 00 01 */	li r4, 1
/* 805C2340  4B FF FF 01 */	bl mAD_move_between
/* 805C2344  48 00 00 48 */	b lbl_805C238C
lbl_805C2348:
/* 805C2348  54 A0 07 39 */	rlwinm. r0, r5, 0, 0x1c, 0x1c
/* 805C234C  41 82 00 30 */	beq lbl_805C237C
/* 805C2350  88 86 00 05 */	lbz r4, 5(r6)
/* 805C2354  28 04 00 00 */	cmplwi r4, 0
/* 805C2358  41 82 00 18 */	beq lbl_805C2370
/* 805C235C  38 04 FF FF */	addi r0, r4, -1
/* 805C2360  38 60 00 01 */	li r3, 1
/* 805C2364  98 06 00 05 */	stb r0, 5(r6)
/* 805C2368  48 06 B9 9D */	bl sAdo_SysTrgStart
/* 805C236C  48 00 00 20 */	b lbl_805C238C
lbl_805C2370:
/* 805C2370  38 80 FF FF */	li r4, -1
/* 805C2374  4B FF FE CD */	bl mAD_move_between
/* 805C2378  48 00 00 14 */	b lbl_805C238C
lbl_805C237C:
/* 805C237C  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 805C2380  41 82 00 0C */	beq lbl_805C238C
/* 805C2384  38 80 00 01 */	li r4, 1
/* 805C2388  4B FF FE B9 */	bl mAD_move_between
lbl_805C238C:
/* 805C238C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C2390  7C 08 03 A6 */	mtlr r0
/* 805C2394  38 21 00 10 */	addi r1, r1, 0x10
/* 805C2398  4E 80 00 20 */	blr 
