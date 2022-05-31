lbl_803A4250:
/* 803A4250  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803A4254  7C 08 02 A6 */	mflr r0
/* 803A4258  90 01 00 44 */	stw r0, 0x44(r1)
/* 803A425C  39 61 00 40 */	addi r11, r1, 0x40
/* 803A4260  4B CF 6C 55 */	bl func_8009AEB4
/* 803A4264  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803A4268  7C 77 1B 79 */	or. r23, r3, r3
/* 803A426C  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803A4270  3B E0 00 00 */	li r31, 0
/* 803A4274  3F 63 00 01 */	addis r27, r3, 1
/* 803A4278  3C 80 80 65 */	lis r4, data_80653520@ha /* 0x80653520@ha */
/* 803A427C  7F 7A DB 78 */	mr r26, r27
/* 803A4280  3B 00 00 00 */	li r24, 0
/* 803A4284  3B 24 35 20 */	addi r25, r4, data_80653520@l /* 0x80653520@l */
/* 803A4288  3B 7B 73 A8 */	addi r27, r27, 0x73a8
/* 803A428C  3B 5A 37 A8 */	addi r26, r26, 0x37a8
/* 803A4290  41 82 00 08 */	beq lbl_803A4298
/* 803A4294  3B F7 00 88 */	addi r31, r23, 0x88
lbl_803A4298:
/* 803A4298  3C 60 80 81 */	lis r3, data_combi_table_number@ha /* 0x8080E520@ha */
/* 803A429C  3C 80 80 81 */	lis r4, data_8080DC80@ha /* 0x8080DC80@ha */
/* 803A42A0  38 84 DC 80 */	addi r4, r4, data_8080DC80@l /* 0x8080DC80@l */
/* 803A42A4  80 A3 E5 20 */	lwz r5, data_combi_table_number@l(r3)  /* 0x8080E520@l */
/* 803A42A8  7E E6 BB 78 */	mr r6, r23
/* 803A42AC  38 79 07 70 */	addi r3, r25, 0x770
/* 803A42B0  7C 9C 23 78 */	mr r28, r4
/* 803A42B4  48 04 07 85 */	bl func_803E4A38
/* 803A42B8  3C 80 80 81 */	lis r4, data_8080DC80@ha /* 0x8080DC80@ha */
/* 803A42BC  80 79 07 FC */	lwz r3, 0x7fc(r25)
/* 803A42C0  38 C4 DC 80 */	addi r6, r4, data_8080DC80@l /* 0x8080DC80@l */
/* 803A42C4  80 99 08 00 */	lwz r4, 0x800(r25)
/* 803A42C8  38 B9 07 70 */	addi r5, r25, 0x770
/* 803A42CC  38 E0 00 46 */	li r7, 0x46
/* 803A42D0  4B FF FD F1 */	bl mFM_SetBlockKind
/* 803A42D4  7F 63 DB 78 */	mr r3, r27
/* 803A42D8  38 99 07 70 */	addi r4, r25, 0x770
/* 803A42DC  38 A0 00 07 */	li r5, 7
/* 803A42E0  38 C0 00 0A */	li r6, 0xa
/* 803A42E4  4B FF EA 69 */	bl mFM_SetCombiTable
/* 803A42E8  38 60 00 00 */	li r3, 0
/* 803A42EC  4B C6 29 BD */	bl JW_GetResSizeFileNo
/* 803A42F0  7C 79 1B 78 */	mr r25, r3
/* 803A42F4  28 17 00 00 */	cmplwi r23, 0
/* 803A42F8  38 19 00 1F */	addi r0, r25, 0x1f
/* 803A42FC  54 16 00 34 */	rlwinm r22, r0, 0, 0, 0x1a
/* 803A4300  41 82 00 20 */	beq lbl_803A4320
/* 803A4304  7F E3 FB 78 */	mr r3, r31
/* 803A4308  38 96 00 20 */	addi r4, r22, 0x20
/* 803A430C  48 06 0F 7D */	bl func_80405288
/* 803A4310  7C 7E 1B 78 */	mr r30, r3
/* 803A4314  38 1E 00 1F */	addi r0, r30, 0x1f
/* 803A4318  54 1D 00 34 */	rlwinm r29, r0, 0, 0, 0x1a
/* 803A431C  48 00 00 14 */	b lbl_803A4330
lbl_803A4320:
/* 803A4320  7E C3 B3 78 */	mr r3, r22
/* 803A4324  38 80 00 20 */	li r4, 0x20
/* 803A4328  48 01 81 01 */	bl func_803BC428
/* 803A432C  7C 7D 1B 78 */	mr r29, r3
lbl_803A4330:
/* 803A4330  38 00 02 06 */	li r0, 0x206
/* 803A4334  38 60 00 00 */	li r3, 0
/* 803A4338  7E B9 03 96 */	divwu r21, r25, r0
/* 803A433C  4B C6 28 99 */	bl JW_GetAramAddress
/* 803A4340  7F A4 EB 78 */	mr r4, r29
/* 803A4344  7E C5 B3 78 */	mr r5, r22
/* 803A4348  4B C6 29 2D */	bl _JW_GetResourceAram
/* 803A434C  28 17 00 00 */	cmplwi r23, 0
/* 803A4350  41 82 00 14 */	beq lbl_803A4364
/* 803A4354  7F E3 FB 78 */	mr r3, r31
/* 803A4358  38 80 06 80 */	li r4, 0x680
/* 803A435C  48 06 0F 2D */	bl func_80405288
/* 803A4360  48 00 00 0C */	b lbl_803A436C
lbl_803A4364:
/* 803A4364  38 60 06 80 */	li r3, 0x680
/* 803A4368  48 01 80 F5 */	bl zelda_malloc
lbl_803A436C:
/* 803A436C  7C 76 1B 78 */	mr r22, r3
/* 803A4370  7F A4 EB 78 */	mr r4, r29
/* 803A4374  7E A6 AB 78 */	mr r6, r21
/* 803A4378  38 A0 01 A0 */	li r5, 0x1a0
/* 803A437C  38 E0 00 00 */	li r7, 0
/* 803A4380  4B FF DE A5 */	bl mFM_SortFGData
/* 803A4384  7F 55 D3 78 */	mr r21, r26
/* 803A4388  3B 40 00 00 */	li r26, 0
lbl_803A438C:
/* 803A438C  3B 20 00 00 */	li r25, 0
lbl_803A4390:
/* 803A4390  2C 1A 00 00 */	cmpwi r26, 0
/* 803A4394  40 81 00 7C */	ble lbl_803A4410
/* 803A4398  2C 1A 00 07 */	cmpwi r26, 7
/* 803A439C  40 80 00 74 */	bge lbl_803A4410
/* 803A43A0  2C 19 00 00 */	cmpwi r25, 0
/* 803A43A4  40 81 00 6C */	ble lbl_803A4410
/* 803A43A8  2C 19 00 06 */	cmpwi r25, 6
/* 803A43AC  40 80 00 64 */	bge lbl_803A4410
/* 803A43B0  2C 18 00 1E */	cmpwi r24, 0x1e
/* 803A43B4  40 80 00 6C */	bge lbl_803A4420
/* 803A43B8  A0 1B 00 00 */	lhz r0, 0(r27)
/* 803A43BC  28 15 00 00 */	cmplwi r21, 0
/* 803A43C0  54 00 F4 BE */	rlwinm r0, r0, 0x1e, 0x12, 0x1f
/* 803A43C4  1C 60 00 06 */	mulli r3, r0, 6
/* 803A43C8  38 03 00 02 */	addi r0, r3, 2
/* 803A43CC  7C 7C 02 2E */	lhzx r3, r28, r0
/* 803A43D0  41 82 00 50 */	beq lbl_803A4420
/* 803A43D4  54 60 10 3A */	slwi r0, r3, 2
/* 803A43D8  7C 96 00 2E */	lwzx r4, r22, r0
/* 803A43DC  28 04 00 00 */	cmplwi r4, 0
/* 803A43E0  41 82 00 40 */	beq lbl_803A4420
/* 803A43E4  2C 03 00 00 */	cmpwi r3, 0
/* 803A43E8  41 80 00 18 */	blt lbl_803A4400
/* 803A43EC  2C 03 01 A0 */	cmpwi r3, 0x1a0
/* 803A43F0  40 80 00 10 */	bge lbl_803A4400
/* 803A43F4  7E A3 AB 78 */	mr r3, r21
/* 803A43F8  38 84 00 02 */	addi r4, r4, 2
/* 803A43FC  4B FF DE B9 */	bl mFM_FgUtDataSet
lbl_803A4400:
/* 803A4400  3B 18 00 01 */	addi r24, r24, 1
/* 803A4404  3A B5 02 00 */	addi r21, r21, 0x200
/* 803A4408  2C 18 00 1E */	cmpwi r24, 0x1e
/* 803A440C  40 80 00 14 */	bge lbl_803A4420
lbl_803A4410:
/* 803A4410  3B 39 00 01 */	addi r25, r25, 1
/* 803A4414  3B 7B 00 02 */	addi r27, r27, 2
/* 803A4418  2C 19 00 07 */	cmpwi r25, 7
/* 803A441C  41 80 FF 74 */	blt lbl_803A4390
lbl_803A4420:
/* 803A4420  3B 5A 00 01 */	addi r26, r26, 1
/* 803A4424  2C 1A 00 08 */	cmpwi r26, 8
/* 803A4428  41 80 FF 64 */	blt lbl_803A438C
/* 803A442C  38 61 00 08 */	addi r3, r1, 8
/* 803A4430  48 00 20 A9 */	bl mFI_GetIslandBlockNumX
/* 803A4434  7F 83 E3 78 */	mr r3, r28
/* 803A4438  7E C4 B3 78 */	mr r4, r22
/* 803A443C  38 A1 00 08 */	addi r5, r1, 8
/* 803A4440  4B FF FD 55 */	bl mFM_SetIslandFg
/* 803A4444  28 17 00 00 */	cmplwi r23, 0
/* 803A4448  41 82 00 20 */	beq lbl_803A4468
/* 803A444C  7F E3 FB 78 */	mr r3, r31
/* 803A4450  7E C4 B3 78 */	mr r4, r22
/* 803A4454  48 06 0E AD */	bl gamealloc_free
/* 803A4458  7F E3 FB 78 */	mr r3, r31
/* 803A445C  7F C4 F3 78 */	mr r4, r30
/* 803A4460  48 06 0E A1 */	bl gamealloc_free
/* 803A4464  48 00 00 14 */	b lbl_803A4478
lbl_803A4468:
/* 803A4468  7E C3 B3 78 */	mr r3, r22
/* 803A446C  48 01 80 49 */	bl zelda_free
/* 803A4470  7F A3 EB 78 */	mr r3, r29
/* 803A4474  48 01 80 41 */	bl zelda_free
lbl_803A4478:
/* 803A4478  39 61 00 40 */	addi r11, r1, 0x40
/* 803A447C  4B CF 6A 85 */	bl func_8009AF00
/* 803A4480  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803A4484  7C 08 03 A6 */	mtlr r0
/* 803A4488  38 21 00 40 */	addi r1, r1, 0x40
/* 803A448C  4E 80 00 20 */	blr 
