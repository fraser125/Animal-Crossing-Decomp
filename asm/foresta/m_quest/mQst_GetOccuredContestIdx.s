lbl_803E3564:
/* 803E3564  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E3568  38 00 00 0F */	li r0, 0xf
/* 803E356C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803E3570  38 C0 FF FF */	li r6, -1
/* 803E3574  3C A4 00 01 */	addis r5, r4, 1
/* 803E3578  38 E0 00 00 */	li r7, 0
/* 803E357C  7C 09 03 A6 */	mtctr r0
/* 803E3580  38 A5 74 38 */	addi r5, r5, 0x7438
lbl_803E3584:
/* 803E3584  88 85 08 A8 */	lbz r4, 0x8a8(r5)
/* 803E3588  54 80 D7 BE */	rlwinm r0, r4, 0x1a, 0x1e, 0x1f
/* 803E358C  28 00 00 02 */	cmplwi r0, 2
/* 803E3590  40 82 00 18 */	bne lbl_803E35A8
/* 803E3594  54 80 06 BE */	clrlwi r0, r4, 0x1a
/* 803E3598  7C 00 18 40 */	cmplw r0, r3
/* 803E359C  40 82 00 0C */	bne lbl_803E35A8
/* 803E35A0  7C E6 3B 78 */	mr r6, r7
/* 803E35A4  48 00 00 10 */	b lbl_803E35B4
lbl_803E35A8:
/* 803E35A8  38 A5 09 88 */	addi r5, r5, 0x988
/* 803E35AC  38 E7 00 01 */	addi r7, r7, 1
/* 803E35B0  42 00 FF D4 */	bdnz lbl_803E3584
lbl_803E35B4:
/* 803E35B4  7C C3 33 78 */	mr r3, r6
/* 803E35B8  4E 80 00 20 */	blr 
