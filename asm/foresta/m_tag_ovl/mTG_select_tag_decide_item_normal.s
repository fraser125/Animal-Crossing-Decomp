lbl_805FAA44:
/* 805FAA44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805FAA48  7C 08 02 A6 */	mflr r0
/* 805FAA4C  3D 00 80 6D */	lis r8, data_806CF828@ha /* 0x806CF828@ha */
/* 805FAA50  54 8A 04 3E */	clrlwi r10, r4, 0x10
/* 805FAA54  90 01 00 14 */	stw r0, 0x14(r1)
/* 805FAA58  54 A0 08 3C */	slwi r0, r5, 1
/* 805FAA5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805FAA60  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805FAA64  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805FAA68  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805FAA6C  80 E6 09 88 */	lwz r7, 0x988(r6)
/* 805FAA70  3C 63 00 02 */	addis r3, r3, 2
/* 805FAA74  80 C3 61 3C */	lwz r6, 0x613c(r3)
/* 805FAA78  38 68 F8 28 */	addi r3, r8, data_806CF828@l /* 0x806CF828@l */
/* 805FAA7C  A1 67 05 E0 */	lhz r11, 0x5e0(r7)
/* 805FAA80  81 06 00 88 */	lwz r8, 0x88(r6)
/* 805FAA84  28 0B 00 00 */	cmplwi r11, 0
/* 805FAA88  7D 08 04 30 */	srw r8, r8, r0
/* 805FAA8C  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 805FAA90  55 0C 07 BE */	clrlwi r12, r8, 0x1e
/* 805FAA94  54 88 C7 3E */	rlwinm r8, r4, 0x18, 0x1c, 0x1f
/* 805FAA98  41 82 00 1C */	beq lbl_805FAAB4
/* 805FAA9C  39 20 00 01 */	li r9, 1
/* 805FAAA0  7D 25 28 30 */	slw r5, r9, r5
/* 805FAAA4  7D 65 28 39 */	and. r5, r11, r5
/* 805FAAA8  41 82 00 0C */	beq lbl_805FAAB4
/* 805FAAAC  3B E0 00 3F */	li r31, 0x3f
/* 805FAAB0  48 00 02 68 */	b lbl_805FAD18
lbl_805FAAB4:
/* 805FAAB4  55 85 07 FF */	clrlwi. r5, r12, 0x1f
/* 805FAAB8  41 82 00 0C */	beq lbl_805FAAC4
/* 805FAABC  3B E0 00 0B */	li r31, 0xb
/* 805FAAC0  48 00 02 58 */	b lbl_805FAD18
lbl_805FAAC4:
/* 805FAAC4  55 85 07 BD */	rlwinm. r5, r12, 0, 0x1e, 0x1e
/* 805FAAC8  41 82 00 0C */	beq lbl_805FAAD4
/* 805FAACC  3B E0 00 08 */	li r31, 8
/* 805FAAD0  48 00 02 48 */	b lbl_805FAD18
lbl_805FAAD4:
/* 805FAAD4  54 85 04 3E */	clrlwi r5, r4, 0x10
/* 805FAAD8  28 05 25 1E */	cmplwi r5, 0x251e
/* 805FAADC  40 82 00 24 */	bne lbl_805FAB00
/* 805FAAE0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805FAAE4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805FAAE8  3C A5 00 02 */	addis r5, r5, 2
/* 805FAAEC  88 A5 60 01 */	lbz r5, 0x6001(r5)
/* 805FAAF0  28 05 00 00 */	cmplwi r5, 0
/* 805FAAF4  40 82 00 0C */	bne lbl_805FAB00
/* 805FAAF8  3B E0 00 48 */	li r31, 0x48
/* 805FAAFC  48 00 02 1C */	b lbl_805FAD18
lbl_805FAB00:
/* 805FAB00  54 85 04 3E */	clrlwi r5, r4, 0x10
/* 805FAB04  28 05 25 23 */	cmplwi r5, 0x2523
/* 805FAB08  41 80 00 0C */	blt lbl_805FAB14
/* 805FAB0C  28 05 25 2F */	cmplwi r5, 0x252f
/* 805FAB10  40 81 00 10 */	ble lbl_805FAB20
lbl_805FAB14:
/* 805FAB14  54 89 04 3E */	clrlwi r9, r4, 0x10
/* 805FAB18  28 09 25 30 */	cmplwi r9, 0x2530
/* 805FAB1C  40 82 00 0C */	bne lbl_805FAB28
lbl_805FAB20:
/* 805FAB20  3B E0 00 46 */	li r31, 0x46
/* 805FAB24  48 00 01 F4 */	b lbl_805FAD18
lbl_805FAB28:
/* 805FAB28  2C 00 00 01 */	cmpwi r0, 1
/* 805FAB2C  41 82 00 0C */	beq lbl_805FAB38
/* 805FAB30  2C 00 00 03 */	cmpwi r0, 3
/* 805FAB34  40 82 00 28 */	bne lbl_805FAB5C
lbl_805FAB38:
/* 805FAB38  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805FAB3C  38 63 15 70 */	addi r3, r3, 0x1570
/* 805FAB40  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805FAB44  3C A5 00 02 */	addis r5, r5, 2
/* 805FAB48  88 A5 60 01 */	lbz r5, 0x6001(r5)
/* 805FAB4C  54 A5 10 3A */	slwi r5, r5, 2
/* 805FAB50  7C 63 28 2E */	lwzx r3, r3, r5
/* 805FAB54  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 805FAB58  48 00 01 C0 */	b lbl_805FAD18
lbl_805FAB5C:
/* 805FAB5C  28 09 2D 28 */	cmplwi r9, 0x2d28
/* 805FAB60  41 80 00 7C */	blt lbl_805FABDC
/* 805FAB64  28 09 2D 2C */	cmplwi r9, 0x2d2c
/* 805FAB68  41 81 00 74 */	bgt lbl_805FABDC
/* 805FAB6C  28 09 2D 28 */	cmplwi r9, 0x2d28
/* 805FAB70  38 A0 00 00 */	li r5, 0
/* 805FAB74  41 80 00 10 */	blt lbl_805FAB84
/* 805FAB78  28 09 2D 2C */	cmplwi r9, 0x2d2c
/* 805FAB7C  41 81 00 08 */	bgt lbl_805FAB84
/* 805FAB80  38 A0 00 01 */	li r5, 1
lbl_805FAB84:
/* 805FAB84  21 25 00 00 */	subfic r9, r5, 0
/* 805FAB88  38 AA D2 D9 */	addi r5, r10, -11559
/* 805FAB8C  7D 29 49 10 */	subfe r9, r9, r9
/* 805FAB90  7C A5 48 38 */	and r5, r5, r9
/* 805FAB94  2C 05 00 01 */	cmpwi r5, 1
/* 805FAB98  40 81 00 24 */	ble lbl_805FABBC
/* 805FAB9C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805FABA0  38 63 15 80 */	addi r3, r3, 0x1580
/* 805FABA4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805FABA8  3C A5 00 02 */	addis r5, r5, 2
/* 805FABAC  88 A5 60 01 */	lbz r5, 0x6001(r5)
/* 805FABB0  54 A5 10 3A */	slwi r5, r5, 2
/* 805FABB4  7F E3 28 2E */	lwzx r31, r3, r5
/* 805FABB8  48 00 01 60 */	b lbl_805FAD18
lbl_805FABBC:
/* 805FABBC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805FABC0  38 63 15 90 */	addi r3, r3, 0x1590
/* 805FABC4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805FABC8  3C A5 00 02 */	addis r5, r5, 2
/* 805FABCC  88 A5 60 01 */	lbz r5, 0x6001(r5)
/* 805FABD0  54 A5 10 3A */	slwi r5, r5, 2
/* 805FABD4  7F E3 28 2E */	lwzx r31, r3, r5
/* 805FABD8  48 00 01 40 */	b lbl_805FAD18
lbl_805FABDC:
/* 805FABDC  54 85 04 3E */	clrlwi r5, r4, 0x10
/* 805FABE0  28 05 20 00 */	cmplwi r5, 0x2000
/* 805FABE4  41 80 00 64 */	blt lbl_805FAC48
/* 805FABE8  28 05 20 FF */	cmplwi r5, 0x20ff
/* 805FABEC  41 81 00 5C */	bgt lbl_805FAC48
/* 805FABF0  38 AA E0 00 */	addi r5, r10, -8192
/* 805FABF4  7C A5 36 70 */	srawi r5, r5, 6
/* 805FABF8  7C A5 01 95 */	addze. r5, r5
/* 805FABFC  40 82 00 2C */	bne lbl_805FAC28
/* 805FAC00  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805FAC04  38 63 15 70 */	addi r3, r3, 0x1570
/* 805FAC08  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805FAC0C  39 00 00 00 */	li r8, 0
/* 805FAC10  3C A5 00 02 */	addis r5, r5, 2
/* 805FAC14  88 A5 60 01 */	lbz r5, 0x6001(r5)
/* 805FAC18  54 A5 10 3A */	slwi r5, r5, 2
/* 805FAC1C  7C 63 28 2E */	lwzx r3, r3, r5
/* 805FAC20  83 E3 00 00 */	lwz r31, 0(r3)
/* 805FAC24  48 00 00 F4 */	b lbl_805FAD18
lbl_805FAC28:
/* 805FAC28  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805FAC2C  38 63 15 A0 */	addi r3, r3, 0x15a0
/* 805FAC30  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805FAC34  3C A5 00 02 */	addis r5, r5, 2
/* 805FAC38  88 A5 60 01 */	lbz r5, 0x6001(r5)
/* 805FAC3C  54 A5 10 3A */	slwi r5, r5, 2
/* 805FAC40  7F E3 28 2E */	lwzx r31, r3, r5
/* 805FAC44  48 00 00 D4 */	b lbl_805FAD18
lbl_805FAC48:
/* 805FAC48  54 85 04 3E */	clrlwi r5, r4, 0x10
/* 805FAC4C  28 05 22 44 */	cmplwi r5, 0x2244
/* 805FAC50  41 80 00 44 */	blt lbl_805FAC94
/* 805FAC54  28 05 22 4B */	cmplwi r5, 0x224b
/* 805FAC58  41 81 00 3C */	bgt lbl_805FAC94
/* 805FAC5C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805FAC60  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805FAC64  3C 63 00 02 */	addis r3, r3, 2
/* 805FAC68  88 63 60 01 */	lbz r3, 0x6001(r3)
/* 805FAC6C  28 03 00 00 */	cmplwi r3, 0
/* 805FAC70  40 82 00 0C */	bne lbl_805FAC7C
/* 805FAC74  3B E0 00 49 */	li r31, 0x49
/* 805FAC78  48 00 00 A0 */	b lbl_805FAD18
lbl_805FAC7C:
/* 805FAC7C  28 03 00 01 */	cmplwi r3, 1
/* 805FAC80  40 82 00 0C */	bne lbl_805FAC8C
/* 805FAC84  3B E0 00 0C */	li r31, 0xc
/* 805FAC88  48 00 00 90 */	b lbl_805FAD18
lbl_805FAC8C:
/* 805FAC8C  3B E0 00 08 */	li r31, 8
/* 805FAC90  48 00 00 88 */	b lbl_805FAD18
lbl_805FAC94:
/* 805FAC94  2C 08 00 0C */	cmpwi r8, 0xc
/* 805FAC98  40 82 00 10 */	bne lbl_805FACA8
/* 805FAC9C  55 45 07 7F */	clrlwi. r5, r10, 0x1d
/* 805FACA0  40 82 00 08 */	bne lbl_805FACA8
/* 805FACA4  39 00 00 05 */	li r8, 5
lbl_805FACA8:
/* 805FACA8  3D 20 81 14 */	lis r9, common_data@ha /* 0x81138538@ha */
/* 805FACAC  38 A3 15 70 */	addi r5, r3, 0x1570
/* 805FACB0  39 49 85 38 */	addi r10, r9, common_data@l /* 0x81138538@l */
/* 805FACB4  55 03 10 3A */	slwi r3, r8, 2
/* 805FACB8  3D 2A 00 02 */	addis r9, r10, 2
/* 805FACBC  89 69 60 01 */	lbz r11, 0x6001(r9)
/* 805FACC0  55 69 15 BA */	rlwinm r9, r11, 2, 0x16, 0x1d
/* 805FACC4  28 0B 00 01 */	cmplwi r11, 1
/* 805FACC8  7C A5 48 2E */	lwzx r5, r5, r9
/* 805FACCC  7F E5 18 2E */	lwzx r31, r5, r3
/* 805FACD0  40 82 00 48 */	bne lbl_805FAD18
/* 805FACD4  80 AA 00 14 */	lwz r5, 0x14(r10)
/* 805FACD8  2C 05 00 2A */	cmpwi r5, 0x2a
/* 805FACDC  41 82 00 18 */	beq lbl_805FACF4
/* 805FACE0  38 65 FF D5 */	addi r3, r5, -43
/* 805FACE4  28 03 00 01 */	cmplwi r3, 1
/* 805FACE8  40 81 00 0C */	ble lbl_805FACF4
/* 805FACEC  2C 05 00 2D */	cmpwi r5, 0x2d
/* 805FACF0  40 82 00 28 */	bne lbl_805FAD18
lbl_805FACF4:
/* 805FACF4  20 A8 00 06 */	subfic r5, r8, 6
/* 805FACF8  20 68 00 07 */	subfic r3, r8, 7
/* 805FACFC  7C A5 00 34 */	cntlzw r5, r5
/* 805FAD00  7C 63 00 34 */	cntlzw r3, r3
/* 805FAD04  54 A5 D9 7E */	srwi r5, r5, 5
/* 805FAD08  54 63 D9 7E */	srwi r3, r3, 5
/* 805FAD0C  7C A3 1B 79 */	or. r3, r5, r3
/* 805FAD10  41 82 00 08 */	beq lbl_805FAD18
/* 805FAD14  3B E0 00 0C */	li r31, 0xc
lbl_805FAD18:
/* 805FAD18  28 07 00 00 */	cmplwi r7, 0
/* 805FAD1C  41 82 00 B8 */	beq lbl_805FADD4
/* 805FAD20  2C 00 00 02 */	cmpwi r0, 2
/* 805FAD24  40 82 00 20 */	bne lbl_805FAD44
/* 805FAD28  2C 08 00 03 */	cmpwi r8, 3
/* 805FAD2C  40 82 00 18 */	bne lbl_805FAD44
/* 805FAD30  88 67 03 E1 */	lbz r3, 0x3e1(r7)
/* 805FAD34  28 03 00 01 */	cmplwi r3, 1
/* 805FAD38  40 82 00 0C */	bne lbl_805FAD44
/* 805FAD3C  3B E0 00 07 */	li r31, 7
/* 805FAD40  48 00 00 94 */	b lbl_805FADD4
lbl_805FAD44:
/* 805FAD44  A0 66 04 A4 */	lhz r3, 0x4a4(r6)
/* 805FAD48  28 03 22 02 */	cmplwi r3, 0x2202
/* 805FAD4C  41 80 00 08 */	blt lbl_805FAD54
/* 805FAD50  40 81 00 10 */	ble lbl_805FAD60
lbl_805FAD54:
/* 805FAD54  28 03 22 3B */	cmplwi r3, 0x223b
/* 805FAD58  41 80 00 7C */	blt lbl_805FADD4
/* 805FAD5C  41 81 00 78 */	bgt lbl_805FADD4
lbl_805FAD60:
/* 805FAD60  88 67 03 E0 */	lbz r3, 0x3e0(r7)
/* 805FAD64  28 03 00 01 */	cmplwi r3, 1
/* 805FAD68  40 82 00 6C */	bne lbl_805FADD4
/* 805FAD6C  54 83 04 3E */	clrlwi r3, r4, 0x10
/* 805FAD70  28 03 25 1E */	cmplwi r3, 0x251e
/* 805FAD74  41 82 00 60 */	beq lbl_805FADD4
/* 805FAD78  2C 00 00 02 */	cmpwi r0, 2
/* 805FAD7C  40 82 00 0C */	bne lbl_805FAD88
/* 805FAD80  2C 08 00 0D */	cmpwi r8, 0xd
/* 805FAD84  41 82 00 50 */	beq lbl_805FADD4
lbl_805FAD88:
/* 805FAD88  2C 1F 00 01 */	cmpwi r31, 1
/* 805FAD8C  40 82 00 0C */	bne lbl_805FAD98
/* 805FAD90  3B E0 00 02 */	li r31, 2
/* 805FAD94  48 00 00 40 */	b lbl_805FADD4
lbl_805FAD98:
/* 805FAD98  2C 1F 00 03 */	cmpwi r31, 3
/* 805FAD9C  40 82 00 0C */	bne lbl_805FADA8
/* 805FADA0  3B E0 00 04 */	li r31, 4
/* 805FADA4  48 00 00 30 */	b lbl_805FADD4
lbl_805FADA8:
/* 805FADA8  2C 1F 00 41 */	cmpwi r31, 0x41
/* 805FADAC  40 82 00 0C */	bne lbl_805FADB8
/* 805FADB0  3B E0 00 42 */	li r31, 0x42
/* 805FADB4  48 00 00 20 */	b lbl_805FADD4
lbl_805FADB8:
/* 805FADB8  2C 1F 00 05 */	cmpwi r31, 5
/* 805FADBC  40 82 00 0C */	bne lbl_805FADC8
/* 805FADC0  3B E0 00 06 */	li r31, 6
/* 805FADC4  48 00 00 10 */	b lbl_805FADD4
lbl_805FADC8:
/* 805FADC8  2C 1F 00 1F */	cmpwi r31, 0x1f
/* 805FADCC  40 82 00 08 */	bne lbl_805FADD4
/* 805FADD0  3B E0 00 20 */	li r31, 0x20
lbl_805FADD4:
/* 805FADD4  4B D9 FE 61 */	bl mEv_CheckFirstJob
/* 805FADD8  2C 03 00 00 */	cmpwi r3, 0
/* 805FADDC  41 82 00 10 */	beq lbl_805FADEC
/* 805FADE0  2C 1F 00 09 */	cmpwi r31, 9
/* 805FADE4  40 82 00 08 */	bne lbl_805FADEC
/* 805FADE8  3B E0 00 0A */	li r31, 0xa
lbl_805FADEC:
/* 805FADEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805FADF0  7F E3 FB 78 */	mr r3, r31
/* 805FADF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805FADF8  7C 08 03 A6 */	mtlr r0
/* 805FADFC  38 21 00 10 */	addi r1, r1, 0x10
/* 805FAE00  4E 80 00 20 */	blr 
