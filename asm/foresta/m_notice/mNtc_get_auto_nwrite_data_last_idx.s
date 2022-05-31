lbl_803CA044:
/* 803CA044  3C 60 81 17 */	lis r3, mNtc_auto_nwrite_data@ha /* 0x8116B2B8@ha */
/* 803CA048  38 00 00 2B */	li r0, 0x2b
/* 803CA04C  38 C3 B2 B8 */	addi r6, r3, mNtc_auto_nwrite_data@l /* 0x8116B2B8@l */
/* 803CA050  38 60 00 2A */	li r3, 0x2a
/* 803CA054  38 E0 00 2A */	li r7, 0x2a
/* 803CA058  38 80 00 A8 */	li r4, 0xa8
/* 803CA05C  7C 09 03 A6 */	mtctr r0
lbl_803CA060:
/* 803CA060  7C A6 22 14 */	add r5, r6, r4
/* 803CA064  A0 05 00 02 */	lhz r0, 2(r5)
/* 803CA068  28 00 FF FF */	cmplwi r0, 0xffff
/* 803CA06C  41 82 00 0C */	beq lbl_803CA078
/* 803CA070  7C E3 3B 78 */	mr r3, r7
/* 803CA074  4E 80 00 20 */	blr 
lbl_803CA078:
/* 803CA078  38 E7 FF FF */	addi r7, r7, -1
/* 803CA07C  38 84 FF FC */	addi r4, r4, -4
/* 803CA080  42 00 FF E0 */	bdnz lbl_803CA060
/* 803CA084  4E 80 00 20 */	blr 
