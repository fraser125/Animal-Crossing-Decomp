lbl_8050A5EC:
/* 8050A5EC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8050A5F0  7C 08 02 A6 */	mflr r0
/* 8050A5F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8050A5F8  39 61 00 40 */	addi r11, r1, 0x40
/* 8050A5FC  4B B9 08 B9 */	bl func_8009AEB4
/* 8050A600  3B 44 00 01 */	addi r26, r4, 1
/* 8050A604  7C 7D 1B 78 */	mr r29, r3
/* 8050A608  7C DE 33 78 */	mr r30, r6
/* 8050A60C  7C FF 3B 78 */	mr r31, r7
/* 8050A610  7C B9 2B 78 */	mr r25, r5
/* 8050A614  7F 43 D3 78 */	mr r3, r26
/* 8050A618  7C A4 2B 78 */	mr r4, r5
/* 8050A61C  4B FF E8 21 */	bl mRF_D2ToD1
/* 8050A620  7C 78 1B 78 */	mr r24, r3
/* 8050A624  3C 80 80 6A */	lis r4, l_cliff_next_direct@ha /* 0x8069E894@ha */
/* 8050A628  7E FD C0 AE */	lbzx r23, r29, r24
/* 8050A62C  3A C0 00 00 */	li r22, 0
/* 8050A630  3B 84 E8 94 */	addi r28, r4, l_cliff_next_direct@l /* 0x8069E894@l */
/* 8050A634  3A A0 00 00 */	li r21, 0
/* 8050A638  48 00 00 90 */	b lbl_8050A6C8
lbl_8050A63C:
/* 8050A63C  7E E3 BB 78 */	mr r3, r23
/* 8050A640  4B FF E7 45 */	bl mRF_BlockType2CliffIndex
/* 8050A644  7C 7B 1B 78 */	mr r27, r3
/* 8050A648  7E E3 BB 78 */	mr r3, r23
/* 8050A64C  38 80 00 04 */	li r4, 4
/* 8050A650  4B FF E8 6D */	bl mRF_CheckBlockGroup
/* 8050A654  2C 03 00 00 */	cmpwi r3, 0
/* 8050A658  41 82 00 0C */	beq lbl_8050A664
/* 8050A65C  3A C0 00 01 */	li r22, 1
/* 8050A660  48 00 00 28 */	b lbl_8050A688
lbl_8050A664:
/* 8050A664  7C 16 F0 00 */	cmpw r22, r30
/* 8050A668  40 82 00 20 */	bne lbl_8050A688
/* 8050A66C  7C 15 F8 00 */	cmpw r21, r31
/* 8050A670  40 82 00 14 */	bne lbl_8050A684
/* 8050A674  38 1B 00 36 */	addi r0, r27, 0x36
/* 8050A678  38 60 00 01 */	li r3, 1
/* 8050A67C  7C 1D C1 AE */	stbx r0, r29, r24
/* 8050A680  48 00 00 58 */	b lbl_8050A6D8
lbl_8050A684:
/* 8050A684  3A B5 00 01 */	addi r21, r21, 1
lbl_8050A688:
/* 8050A688  7C FC D8 AE */	lbzx r7, r28, r27
/* 8050A68C  7F 45 D3 78 */	mr r5, r26
/* 8050A690  7F 26 CB 78 */	mr r6, r25
/* 8050A694  38 61 00 0C */	addi r3, r1, 0xc
/* 8050A698  38 81 00 08 */	addi r4, r1, 8
/* 8050A69C  4B FF E7 AD */	bl mRF_Direct2BlockNo
/* 8050A6A0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8050A6A4  80 81 00 08 */	lwz r4, 8(r1)
/* 8050A6A8  4B FF E7 95 */	bl mRF_D2ToD1
/* 8050A6AC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8050A6B0  80 81 00 08 */	lwz r4, 8(r1)
/* 8050A6B4  7C 7A 1B 78 */	mr r26, r3
/* 8050A6B8  7C 99 23 78 */	mr r25, r4
/* 8050A6BC  4B FF E7 81 */	bl mRF_D2ToD1
/* 8050A6C0  7C 78 1B 78 */	mr r24, r3
/* 8050A6C4  7E FD C0 AE */	lbzx r23, r29, r24
lbl_8050A6C8:
/* 8050A6C8  56 E0 06 3E */	clrlwi r0, r23, 0x18
/* 8050A6CC  28 00 00 3E */	cmplwi r0, 0x3e
/* 8050A6D0  40 82 FF 6C */	bne lbl_8050A63C
/* 8050A6D4  38 60 00 00 */	li r3, 0
lbl_8050A6D8:
/* 8050A6D8  39 61 00 40 */	addi r11, r1, 0x40
/* 8050A6DC  4B B9 08 25 */	bl func_8009AF00
/* 8050A6E0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8050A6E4  7C 08 03 A6 */	mtlr r0
/* 8050A6E8  38 21 00 40 */	addi r1, r1, 0x40
/* 8050A6EC  4E 80 00 20 */	blr 
