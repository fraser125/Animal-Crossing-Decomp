lbl_803AF3A8:
/* 803AF3A8  7C 65 1B 78 */	mr r5, r3
/* 803AF3AC  38 C0 00 00 */	li r6, 0
/* 803AF3B0  7C 89 03 A6 */	mtctr r4
/* 803AF3B4  2C 04 00 00 */	cmpwi r4, 0
/* 803AF3B8  40 81 00 1C */	ble lbl_803AF3D4
lbl_803AF3BC:
/* 803AF3BC  88 05 00 00 */	lbz r0, 0(r5)
/* 803AF3C0  28 00 00 20 */	cmplwi r0, 0x20
/* 803AF3C4  40 82 00 10 */	bne lbl_803AF3D4
/* 803AF3C8  38 C6 00 01 */	addi r6, r6, 1
/* 803AF3CC  38 A5 00 01 */	addi r5, r5, 1
/* 803AF3D0  42 00 FF EC */	bdnz lbl_803AF3BC
lbl_803AF3D4:
/* 803AF3D4  7C 06 20 00 */	cmpw r6, r4
/* 803AF3D8  40 82 00 0C */	bne lbl_803AF3E4
/* 803AF3DC  38 60 00 00 */	li r3, 0
/* 803AF3E0  4E 80 00 20 */	blr 
lbl_803AF3E4:
/* 803AF3E4  2C 06 00 00 */	cmpwi r6, 0
/* 803AF3E8  40 82 00 0C */	bne lbl_803AF3F4
/* 803AF3EC  7C 83 23 78 */	mr r3, r4
/* 803AF3F0  4E 80 00 20 */	blr 
lbl_803AF3F4:
/* 803AF3F4  7C 06 20 50 */	subf r0, r6, r4
/* 803AF3F8  7C A3 32 14 */	add r5, r3, r6
/* 803AF3FC  7C 09 03 A6 */	mtctr r0
/* 803AF400  7C 06 20 00 */	cmpw r6, r4
/* 803AF404  40 80 00 18 */	bge lbl_803AF41C
lbl_803AF408:
/* 803AF408  88 05 00 00 */	lbz r0, 0(r5)
/* 803AF40C  38 A5 00 01 */	addi r5, r5, 1
/* 803AF410  98 03 00 00 */	stb r0, 0(r3)
/* 803AF414  38 63 00 01 */	addi r3, r3, 1
/* 803AF418  42 00 FF F0 */	bdnz lbl_803AF408
lbl_803AF41C:
/* 803AF41C  38 00 00 20 */	li r0, 0x20
/* 803AF420  7C C9 03 A6 */	mtctr r6
/* 803AF424  2C 06 00 00 */	cmpwi r6, 0
/* 803AF428  40 81 00 10 */	ble lbl_803AF438
lbl_803AF42C:
/* 803AF42C  98 03 00 00 */	stb r0, 0(r3)
/* 803AF430  38 63 00 01 */	addi r3, r3, 1
/* 803AF434  42 00 FF F8 */	bdnz lbl_803AF42C
lbl_803AF438:
/* 803AF438  7C 66 20 50 */	subf r3, r6, r4
/* 803AF43C  4E 80 00 20 */	blr 
