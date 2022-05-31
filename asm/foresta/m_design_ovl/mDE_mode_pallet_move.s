lbl_805D4B90:
/* 805D4B90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D4B94  7C 08 02 A6 */	mflr r0
/* 805D4B98  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805D4B9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D4BA0  38 84 52 F0 */	addi r4, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 805D4BA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D4BA8  93 C1 00 08 */	stw r30, 8(r1)
/* 805D4BAC  7C 7E 1B 78 */	mr r30, r3
/* 805D4BB0  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 805D4BB4  80 84 00 00 */	lwz r4, 0(r4)
/* 805D4BB8  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 805D4BBC  8B FE 06 A5 */	lbz r31, 0x6a5(r30)
/* 805D4BC0  C0 04 00 B0 */	lfs f0, 0xb0(r4)
/* 805D4BC4  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805D4BC8  80 63 00 00 */	lwz r3, 0(r3)
/* 805D4BCC  A8 63 16 B4 */	lha r3, 0x16b4(r3)
/* 805D4BD0  7C 60 07 35 */	extsh. r0, r3
/* 805D4BD4  41 82 00 0C */	beq lbl_805D4BE0
/* 805D4BD8  90 7E 06 C4 */	stw r3, 0x6c4(r30)
/* 805D4BDC  48 00 00 0C */	b lbl_805D4BE8
lbl_805D4BE0:
/* 805D4BE0  38 00 00 18 */	li r0, 0x18
/* 805D4BE4  90 1E 06 C4 */	stw r0, 0x6c4(r30)
lbl_805D4BE8:
/* 805D4BE8  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 805D4BEC  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 805D4BF0  80 63 00 00 */	lwz r3, 0(r3)
/* 805D4BF4  A8 63 16 B6 */	lha r3, 0x16b6(r3)
/* 805D4BF8  7C 60 07 35 */	extsh. r0, r3
/* 805D4BFC  41 82 00 0C */	beq lbl_805D4C08
/* 805D4C00  90 7E 06 BC */	stw r3, 0x6bc(r30)
/* 805D4C04  48 00 00 0C */	b lbl_805D4C10
lbl_805D4C08:
/* 805D4C08  38 00 00 04 */	li r0, 4
/* 805D4C0C  90 1E 06 BC */	stw r0, 0x6bc(r30)
lbl_805D4C10:
/* 805D4C10  7F C3 F3 78 */	mr r3, r30
/* 805D4C14  4B FF C7 B1 */	bl mDE_judge_stick_nuetral
/* 805D4C18  7F C3 F3 78 */	mr r3, r30
/* 805D4C1C  4B FF C7 61 */	bl mDE_judge_stick_full
/* 805D4C20  7F C3 F3 78 */	mr r3, r30
/* 805D4C24  4B FF C6 A5 */	bl mDE_judge_stick
/* 805D4C28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805D4C2C  41 82 00 4C */	beq lbl_805D4C78
/* 805D4C30  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805D4C34  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 805D4C38  80 63 00 00 */	lwz r3, 0(r3)
/* 805D4C3C  88 03 00 17 */	lbz r0, 0x17(r3)
/* 805D4C40  7C 00 07 75 */	extsb. r0, r0
/* 805D4C44  40 80 00 10 */	bge lbl_805D4C54
/* 805D4C48  38 60 04 59 */	li r3, 0x459
/* 805D4C4C  48 05 90 B9 */	bl sAdo_SysTrgStart
/* 805D4C50  3B FF 00 01 */	addi r31, r31, 1
lbl_805D4C54:
/* 805D4C54  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805D4C58  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 805D4C5C  80 63 00 00 */	lwz r3, 0(r3)
/* 805D4C60  88 03 00 17 */	lbz r0, 0x17(r3)
/* 805D4C64  7C 00 07 75 */	extsb. r0, r0
/* 805D4C68  40 81 00 10 */	ble lbl_805D4C78
/* 805D4C6C  38 60 04 59 */	li r3, 0x459
/* 805D4C70  48 05 90 95 */	bl sAdo_SysTrgStart
/* 805D4C74  3B FF FF FF */	addi r31, r31, -1
lbl_805D4C78:
/* 805D4C78  2C 1F 00 10 */	cmpwi r31, 0x10
/* 805D4C7C  9B FE 06 A5 */	stb r31, 0x6a5(r30)
/* 805D4C80  41 80 00 0C */	blt lbl_805D4C8C
/* 805D4C84  38 00 00 00 */	li r0, 0
/* 805D4C88  98 1E 06 A5 */	stb r0, 0x6a5(r30)
lbl_805D4C8C:
/* 805D4C8C  2C 1F 00 00 */	cmpwi r31, 0
/* 805D4C90  40 80 00 0C */	bge lbl_805D4C9C
/* 805D4C94  38 00 00 0F */	li r0, 0xf
/* 805D4C98  98 1E 06 A5 */	stb r0, 0x6a5(r30)
lbl_805D4C9C:
/* 805D4C9C  88 1E 06 A5 */	lbz r0, 0x6a5(r30)
/* 805D4CA0  28 00 00 00 */	cmplwi r0, 0
/* 805D4CA4  40 82 00 54 */	bne lbl_805D4CF8
/* 805D4CA8  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 805D4CAC  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 805D4CB0  4B DC 12 61 */	bl chkTrigger
/* 805D4CB4  2C 03 00 00 */	cmpwi r3, 0
/* 805D4CB8  41 82 00 40 */	beq lbl_805D4CF8
/* 805D4CBC  38 60 04 58 */	li r3, 0x458
/* 805D4CC0  48 05 90 45 */	bl sAdo_SysTrgStart
/* 805D4CC4  88 7E 06 9B */	lbz r3, 0x69b(r30)
/* 805D4CC8  38 03 00 01 */	addi r0, r3, 1
/* 805D4CCC  98 1E 06 9B */	stb r0, 0x69b(r30)
/* 805D4CD0  88 1E 06 9B */	lbz r0, 0x69b(r30)
/* 805D4CD4  28 00 00 10 */	cmplwi r0, 0x10
/* 805D4CD8  41 80 00 0C */	blt lbl_805D4CE4
/* 805D4CDC  38 00 00 00 */	li r0, 0
/* 805D4CE0  98 1E 06 9B */	stb r0, 0x69b(r30)
lbl_805D4CE4:
/* 805D4CE4  88 7E 06 9B */	lbz r3, 0x69b(r30)
/* 805D4CE8  4B DF 4E D5 */	bl mNW_PaletteIdx2Palette
/* 805D4CEC  90 7E 00 00 */	stw r3, 0(r30)
/* 805D4CF0  7F C3 F3 78 */	mr r3, r30
/* 805D4CF4  4B FF C5 41 */	bl func_805D1234
lbl_805D4CF8:
/* 805D4CF8  88 1E 06 A5 */	lbz r0, 0x6a5(r30)
/* 805D4CFC  28 00 00 00 */	cmplwi r0, 0
/* 805D4D00  40 82 00 50 */	bne lbl_805D4D50
/* 805D4D04  38 60 40 00 */	li r3, 0x4000
/* 805D4D08  4B DC 12 09 */	bl chkTrigger
/* 805D4D0C  2C 03 00 00 */	cmpwi r3, 0
/* 805D4D10  41 82 00 40 */	beq lbl_805D4D50
/* 805D4D14  38 60 04 58 */	li r3, 0x458
/* 805D4D18  48 05 8F ED */	bl sAdo_SysTrgStart
/* 805D4D1C  88 7E 06 9B */	lbz r3, 0x69b(r30)
/* 805D4D20  28 03 00 00 */	cmplwi r3, 0
/* 805D4D24  40 82 00 10 */	bne lbl_805D4D34
/* 805D4D28  38 00 00 0F */	li r0, 0xf
/* 805D4D2C  98 1E 06 9B */	stb r0, 0x69b(r30)
/* 805D4D30  48 00 00 0C */	b lbl_805D4D3C
lbl_805D4D34:
/* 805D4D34  38 03 FF FF */	addi r0, r3, -1
/* 805D4D38  98 1E 06 9B */	stb r0, 0x69b(r30)
lbl_805D4D3C:
/* 805D4D3C  88 7E 06 9B */	lbz r3, 0x69b(r30)
/* 805D4D40  4B DF 4E 7D */	bl mNW_PaletteIdx2Palette
/* 805D4D44  90 7E 00 00 */	stw r3, 0(r30)
/* 805D4D48  7F C3 F3 78 */	mr r3, r30
/* 805D4D4C  4B FF C4 E9 */	bl func_805D1234
lbl_805D4D50:
/* 805D4D50  88 1E 06 A5 */	lbz r0, 0x6a5(r30)
/* 805D4D54  28 00 00 00 */	cmplwi r0, 0
/* 805D4D58  41 82 00 34 */	beq lbl_805D4D8C
/* 805D4D5C  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 805D4D60  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 805D4D64  4B DC 11 AD */	bl chkTrigger
/* 805D4D68  2C 03 00 00 */	cmpwi r3, 0
/* 805D4D6C  41 82 00 20 */	beq lbl_805D4D8C
/* 805D4D70  38 60 04 5A */	li r3, 0x45a
/* 805D4D74  48 05 8F 91 */	bl sAdo_SysTrgStart
/* 805D4D78  88 1E 06 A5 */	lbz r0, 0x6a5(r30)
/* 805D4D7C  7F C3 F3 78 */	mr r3, r30
/* 805D4D80  38 80 00 00 */	li r4, 0
/* 805D4D84  98 1E 06 A4 */	stb r0, 0x6a4(r30)
/* 805D4D88  48 00 03 DD */	bl mDE_setup_action
lbl_805D4D8C:
/* 805D4D8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D4D90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D4D94  83 C1 00 08 */	lwz r30, 8(r1)
/* 805D4D98  7C 08 03 A6 */	mtlr r0
/* 805D4D9C  38 21 00 10 */	addi r1, r1, 0x10
/* 805D4DA0  4E 80 00 20 */	blr 
