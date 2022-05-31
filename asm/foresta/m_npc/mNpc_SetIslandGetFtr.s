lbl_803D40B0:
/* 803D40B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D40B4  7C 08 02 A6 */	mflr r0
/* 803D40B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D40BC  39 61 00 20 */	addi r11, r1, 0x20
/* 803D40C0  4B CC 6E 0D */	bl func_8009AECC
/* 803D40C4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D40C8  3C A0 81 17 */	lis r5, l_mnpc_island_ftr@ha /* 0x8116C680@ha */
/* 803D40CC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803D40D0  7C 7B 1B 78 */	mr r27, r3
/* 803D40D4  3C 64 00 02 */	addis r3, r4, 2
/* 803D40D8  3B E5 C6 80 */	addi r31, r5, l_mnpc_island_ftr@l /* 0x8116C680@l */
/* 803D40DC  A0 63 34 40 */	lhz r3, 0x3440(r3)
/* 803D40E0  48 00 04 55 */	bl mNpc_GetIslandRoomP
/* 803D40E4  57 60 04 3F */	clrlwi. r0, r27, 0x10
/* 803D40E8  3B C0 00 00 */	li r30, 0
/* 803D40EC  7C 7D 1B 78 */	mr r29, r3
/* 803D40F0  3B 80 00 00 */	li r28, 0
/* 803D40F4  41 82 01 EC */	beq lbl_803D42E0
/* 803D40F8  57 60 A7 3E */	rlwinm r0, r27, 0x14, 0x1c, 0x1f
/* 803D40FC  2C 00 00 01 */	cmpwi r0, 1
/* 803D4100  41 82 00 0C */	beq lbl_803D410C
/* 803D4104  2C 00 00 03 */	cmpwi r0, 3
/* 803D4108  40 82 01 D8 */	bne lbl_803D42E0
lbl_803D410C:
/* 803D410C  28 1D 00 00 */	cmplwi r29, 0
/* 803D4110  41 82 01 D0 */	beq lbl_803D42E0
/* 803D4114  7F 63 DB 78 */	mr r3, r27
/* 803D4118  48 00 08 B9 */	bl mNpc_CheckFtrIsIslandBestFtr
/* 803D411C  2C 03 00 01 */	cmpwi r3, 1
/* 803D4120  40 82 00 44 */	bne lbl_803D4164
/* 803D4124  7F 63 DB 78 */	mr r3, r27
/* 803D4128  4B FF FD D1 */	bl mNpc_GetIslandFtrIdx
/* 803D412C  2C 03 00 00 */	cmpwi r3, 0
/* 803D4130  41 80 01 98 */	blt lbl_803D42C8
/* 803D4134  2C 03 00 10 */	cmpwi r3, 0x10
/* 803D4138  40 80 01 90 */	bge lbl_803D42C8
/* 803D413C  A0 9F 00 00 */	lhz r4, 0(r31)
/* 803D4140  7C 80 1E 30 */	sraw r0, r4, r3
/* 803D4144  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803D4148  40 82 01 80 */	bne lbl_803D42C8
/* 803D414C  38 00 00 01 */	li r0, 1
/* 803D4150  3B 80 00 01 */	li r28, 1
/* 803D4154  7C 00 18 30 */	slw r0, r0, r3
/* 803D4158  7C 80 03 78 */	or r0, r4, r0
/* 803D415C  B0 1F 00 00 */	sth r0, 0(r31)
/* 803D4160  48 00 01 68 */	b lbl_803D42C8
lbl_803D4164:
/* 803D4164  7F 63 DB 78 */	mr r3, r27
/* 803D4168  48 09 F9 E5 */	bl aMR_GetFurnitureUnit
/* 803D416C  2C 03 00 00 */	cmpwi r3, 0
/* 803D4170  40 82 00 14 */	bne lbl_803D4184
/* 803D4174  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FEB3@ha */
/* 803D4178  38 03 FE B3 */	addi r0, r3, 0xFEB3 /* 0x0000FEB3@l */
/* 803D417C  38 83 FE B7 */	addi r4, r3, -329
/* 803D4180  48 00 00 1C */	b lbl_803D419C
lbl_803D4184:
/* 803D4184  38 03 00 01 */	addi r0, r3, 1
/* 803D4188  38 80 00 00 */	li r4, 0
/* 803D418C  54 03 10 3A */	slwi r3, r0, 2
/* 803D4190  3C 63 00 01 */	addis r3, r3, 1
/* 803D4194  38 03 FE B3 */	addi r0, r3, -333
/* 803D4198  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_803D419C:
/* 803D419C  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 803D41A0  54 86 04 3E */	clrlwi r6, r4, 0x10
/* 803D41A4  39 00 00 00 */	li r8, 0
lbl_803D41A8:
/* 803D41A8  A0 7D 00 00 */	lhz r3, 0(r29)
/* 803D41AC  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803D41B0  2C 00 00 01 */	cmpwi r0, 1
/* 803D41B4  41 82 00 0C */	beq lbl_803D41C0
/* 803D41B8  2C 00 00 03 */	cmpwi r0, 3
/* 803D41BC  40 82 00 0C */	bne lbl_803D41C8
lbl_803D41C0:
/* 803D41C0  3B DE 00 01 */	addi r30, r30, 1
/* 803D41C4  48 00 00 EC */	b lbl_803D42B0
lbl_803D41C8:
/* 803D41C8  28 03 FE B3 */	cmplwi r3, 0xfeb3
/* 803D41CC  41 80 00 E4 */	blt lbl_803D42B0
/* 803D41D0  28 03 FE C2 */	cmplwi r3, 0xfec2
/* 803D41D4  41 81 00 DC */	bgt lbl_803D42B0
/* 803D41D8  38 00 00 04 */	li r0, 4
/* 803D41DC  38 E0 FF FF */	li r7, -1
/* 803D41E0  38 80 00 00 */	li r4, 0
/* 803D41E4  7C 09 03 A6 */	mtctr r0
lbl_803D41E8:
/* 803D41E8  7C 05 22 14 */	add r0, r5, r4
/* 803D41EC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803D41F0  7C 03 00 40 */	cmplw r3, r0
/* 803D41F4  40 82 00 0C */	bne lbl_803D4200
/* 803D41F8  38 E0 00 00 */	li r7, 0
/* 803D41FC  48 00 00 24 */	b lbl_803D4220
lbl_803D4200:
/* 803D4200  7C 06 22 14 */	add r0, r6, r4
/* 803D4204  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803D4208  7C 03 00 40 */	cmplw r3, r0
/* 803D420C  40 82 00 0C */	bne lbl_803D4218
/* 803D4210  38 E0 00 01 */	li r7, 1
/* 803D4214  48 00 00 0C */	b lbl_803D4220
lbl_803D4218:
/* 803D4218  38 84 00 01 */	addi r4, r4, 1
/* 803D421C  42 00 FF CC */	bdnz lbl_803D41E8
lbl_803D4220:
/* 803D4220  2C 07 FF FF */	cmpwi r7, -1
/* 803D4224  41 82 00 88 */	beq lbl_803D42AC
/* 803D4228  2C 1E 00 00 */	cmpwi r30, 0
/* 803D422C  41 80 00 80 */	blt lbl_803D42AC
/* 803D4230  2C 1E 00 10 */	cmpwi r30, 0x10
/* 803D4234  40 80 00 78 */	bge lbl_803D42AC
/* 803D4238  A0 7F 00 00 */	lhz r3, 0(r31)
/* 803D423C  7C 60 F6 30 */	sraw r0, r3, r30
/* 803D4240  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803D4244  40 82 00 68 */	bne lbl_803D42AC
/* 803D4248  38 00 00 01 */	li r0, 1
/* 803D424C  2C 07 00 00 */	cmpwi r7, 0
/* 803D4250  7C 00 F0 30 */	slw r0, r0, r30
/* 803D4254  7C 60 03 78 */	or r0, r3, r0
/* 803D4258  B0 1F 00 00 */	sth r0, 0(r31)
/* 803D425C  40 82 00 18 */	bne lbl_803D4274
/* 803D4260  3C 65 FF FF */	addis r3, r5, 0xffff
/* 803D4264  38 03 01 4D */	addi r0, r3, 0x14d
/* 803D4268  7C 00 16 70 */	srawi r0, r0, 2
/* 803D426C  7F A0 01 94 */	addze r29, r0
/* 803D4270  48 00 00 14 */	b lbl_803D4284
lbl_803D4274:
/* 803D4274  3C 66 FF FF */	addis r3, r6, 0xffff
/* 803D4278  38 03 01 4D */	addi r0, r3, 0x14d
/* 803D427C  7C 00 16 70 */	srawi r0, r0, 2
/* 803D4280  7F A0 01 94 */	addze r29, r0
lbl_803D4284:
/* 803D4284  2C 1D 00 04 */	cmpwi r29, 4
/* 803D4288  40 80 00 40 */	bge lbl_803D42C8
/* 803D428C  7F 63 DB 78 */	mr r3, r27
/* 803D4290  48 09 F9 B5 */	bl aMR_FurnitureFg_to_FurnitureFgWithDirect
/* 803D4294  57 A0 08 3C */	slwi r0, r29, 1
/* 803D4298  7C 7B 1B 78 */	mr r27, r3
/* 803D429C  7C 7F 02 14 */	add r3, r31, r0
/* 803D42A0  3B 80 00 01 */	li r28, 1
/* 803D42A4  B3 63 00 02 */	sth r27, 2(r3)
/* 803D42A8  48 00 00 20 */	b lbl_803D42C8
lbl_803D42AC:
/* 803D42AC  3B DE 00 01 */	addi r30, r30, 1
lbl_803D42B0:
/* 803D42B0  2C 1E 00 10 */	cmpwi r30, 0x10
/* 803D42B4  41 82 00 14 */	beq lbl_803D42C8
/* 803D42B8  39 08 00 01 */	addi r8, r8, 1
/* 803D42BC  3B BD 00 02 */	addi r29, r29, 2
/* 803D42C0  2C 08 01 00 */	cmpwi r8, 0x100
/* 803D42C4  41 80 FE E4 */	blt lbl_803D41A8
lbl_803D42C8:
/* 803D42C8  2C 1C 00 01 */	cmpwi r28, 1
/* 803D42CC  40 82 00 14 */	bne lbl_803D42E0
/* 803D42D0  7F 65 DB 78 */	mr r5, r27
/* 803D42D4  38 7F 00 0A */	addi r3, r31, 0xa
/* 803D42D8  38 80 00 10 */	li r4, 0x10
/* 803D42DC  4B FF FB 31 */	bl mNpc_SetIslandItemList
lbl_803D42E0:
/* 803D42E0  39 61 00 20 */	addi r11, r1, 0x20
/* 803D42E4  4B CC 6C 35 */	bl func_8009AF18
/* 803D42E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D42EC  7C 08 03 A6 */	mtlr r0
/* 803D42F0  38 21 00 20 */	addi r1, r1, 0x20
/* 803D42F4  4E 80 00 20 */	blr 
