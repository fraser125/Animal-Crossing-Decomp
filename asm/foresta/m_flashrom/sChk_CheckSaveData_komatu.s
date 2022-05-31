lbl_803AF258:
/* 803AF258  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803AF25C  38 E0 00 00 */	li r7, 0
/* 803AF260  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 803AF264  38 60 00 00 */	li r3, 0
lbl_803AF268:
/* 803AF268  7C 85 1A 14 */	add r4, r5, r3
/* 803AF26C  38 84 00 20 */	addi r4, r4, 0x20
/* 803AF270  88 04 00 14 */	lbz r0, 0x14(r4)
/* 803AF274  28 00 00 01 */	cmplwi r0, 1
/* 803AF278  40 81 00 0C */	ble lbl_803AF284
/* 803AF27C  38 60 00 01 */	li r3, 1
/* 803AF280  4E 80 00 20 */	blr 
lbl_803AF284:
/* 803AF284  88 C4 00 15 */	lbz r6, 0x15(r4)
/* 803AF288  7C C0 07 75 */	extsb. r0, r6
/* 803AF28C  41 80 00 10 */	blt lbl_803AF29C
/* 803AF290  7C C0 07 74 */	extsb r0, r6
/* 803AF294  2C 00 00 08 */	cmpwi r0, 8
/* 803AF298  41 80 00 0C */	blt lbl_803AF2A4
lbl_803AF29C:
/* 803AF29C  38 60 00 01 */	li r3, 1
/* 803AF2A0  4E 80 00 20 */	blr 
lbl_803AF2A4:
/* 803AF2A4  38 C4 10 88 */	addi r6, r4, 0x1088
/* 803AF2A8  A0 04 10 88 */	lhz r0, 0x1088(r4)
/* 803AF2AC  28 00 01 08 */	cmplwi r0, 0x108
/* 803AF2B0  40 80 00 0C */	bge lbl_803AF2BC
/* 803AF2B4  28 00 00 FF */	cmplwi r0, 0xff
/* 803AF2B8  40 82 00 0C */	bne lbl_803AF2C4
lbl_803AF2BC:
/* 803AF2BC  38 60 00 01 */	li r3, 1
/* 803AF2C0  4E 80 00 20 */	blr 
lbl_803AF2C4:
/* 803AF2C4  A0 C6 00 02 */	lhz r6, 2(r6)
/* 803AF2C8  28 06 00 00 */	cmplwi r6, 0
/* 803AF2CC  41 82 00 34 */	beq lbl_803AF300
/* 803AF2D0  28 06 FE 20 */	cmplwi r6, 0xfe20
/* 803AF2D4  38 00 00 00 */	li r0, 0
/* 803AF2D8  41 82 00 14 */	beq lbl_803AF2EC
/* 803AF2DC  28 06 24 00 */	cmplwi r6, 0x2400
/* 803AF2E0  41 80 00 10 */	blt lbl_803AF2F0
/* 803AF2E4  28 06 24 FF */	cmplwi r6, 0x24ff
/* 803AF2E8  40 80 00 08 */	bge lbl_803AF2F0
lbl_803AF2EC:
/* 803AF2EC  38 00 00 01 */	li r0, 1
lbl_803AF2F0:
/* 803AF2F0  2C 00 00 00 */	cmpwi r0, 0
/* 803AF2F4  40 82 00 0C */	bne lbl_803AF300
/* 803AF2F8  38 60 00 01 */	li r3, 1
/* 803AF2FC  4E 80 00 20 */	blr 
lbl_803AF300:
/* 803AF300  88 04 10 A2 */	lbz r0, 0x10a2(r4)
/* 803AF304  28 00 00 06 */	cmplwi r0, 6
/* 803AF308  41 80 00 0C */	blt lbl_803AF314
/* 803AF30C  38 60 00 01 */	li r3, 1
/* 803AF310  4E 80 00 20 */	blr 
lbl_803AF314:
/* 803AF314  38 C4 23 C4 */	addi r6, r4, 0x23c4
/* 803AF318  89 04 23 C8 */	lbz r8, 0x23c8(r4)
/* 803AF31C  7D 00 07 75 */	extsb. r0, r8
/* 803AF320  41 80 00 10 */	blt lbl_803AF330
/* 803AF324  7D 00 07 74 */	extsb r0, r8
/* 803AF328  2C 00 00 09 */	cmpwi r0, 9
/* 803AF32C  41 80 00 0C */	blt lbl_803AF338
lbl_803AF330:
/* 803AF330  38 60 00 01 */	li r3, 1
/* 803AF334  4E 80 00 20 */	blr 
lbl_803AF338:
/* 803AF338  88 C6 00 05 */	lbz r6, 5(r6)
/* 803AF33C  7C C0 07 75 */	extsb. r0, r6
/* 803AF340  41 80 00 10 */	blt lbl_803AF350
/* 803AF344  7C C0 07 74 */	extsb r0, r6
/* 803AF348  2C 00 00 02 */	cmpwi r0, 2
/* 803AF34C  40 81 00 0C */	ble lbl_803AF358
lbl_803AF350:
/* 803AF350  38 60 00 01 */	li r3, 1
/* 803AF354  4E 80 00 20 */	blr 
lbl_803AF358:
/* 803AF358  38 00 00 04 */	li r0, 4
/* 803AF35C  88 C4 23 DA */	lbz r6, 0x23da(r4)
/* 803AF360  39 00 00 04 */	li r8, 4
/* 803AF364  38 80 00 01 */	li r4, 1
/* 803AF368  7C 09 03 A6 */	mtctr r0
lbl_803AF36C:
/* 803AF36C  7C 80 40 30 */	slw r0, r4, r8
/* 803AF370  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 803AF374  7C C0 00 39 */	and. r0, r6, r0
/* 803AF378  41 82 00 0C */	beq lbl_803AF384
/* 803AF37C  38 60 00 01 */	li r3, 1
/* 803AF380  4E 80 00 20 */	blr 
lbl_803AF384:
/* 803AF384  39 08 00 01 */	addi r8, r8, 1
/* 803AF388  42 00 FF E4 */	bdnz lbl_803AF36C
/* 803AF38C  38 E7 00 01 */	addi r7, r7, 1
/* 803AF390  38 63 24 40 */	addi r3, r3, 0x2440
/* 803AF394  2C 07 00 04 */	cmpwi r7, 4
/* 803AF398  41 80 FE D0 */	blt lbl_803AF268
/* 803AF39C  38 60 00 00 */	li r3, 0
/* 803AF3A0  4E 80 00 20 */	blr 
