lbl_8039C1A8:
/* 8039C1A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8039C1AC  7C 08 02 A6 */	mflr r0
/* 8039C1B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8039C1B4  39 61 00 30 */	addi r11, r1, 0x30
/* 8039C1B8  4B CF ED 19 */	bl func_8009AED0
/* 8039C1BC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039C1C0  3B A0 00 00 */	li r29, 0
/* 8039C1C4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039C1C8  3F C3 00 02 */	addis r30, r3, 2
/* 8039C1CC  88 BE 61 24 */	lbz r5, 0x6124(r30)
/* 8039C1D0  38 7E 04 EC */	addi r3, r30, 0x4ec
/* 8039C1D4  88 9E 61 25 */	lbz r4, 0x6125(r30)
/* 8039C1D8  88 1E 61 23 */	lbz r0, 0x6123(r30)
/* 8039C1DC  2C 05 00 06 */	cmpwi r5, 6
/* 8039C1E0  98 81 00 08 */	stb r4, 8(r1)
/* 8039C1E4  A3 FE 05 64 */	lhz r31, 0x564(r30)
/* 8039C1E8  98 01 00 09 */	stb r0, 9(r1)
/* 8039C1EC  41 82 00 48 */	beq lbl_8039C234
/* 8039C1F0  40 80 00 68 */	bge lbl_8039C258
/* 8039C1F4  2C 05 00 00 */	cmpwi r5, 0
/* 8039C1F8  41 82 00 08 */	beq lbl_8039C200
/* 8039C1FC  48 00 00 5C */	b lbl_8039C258
lbl_8039C200:
/* 8039C200  A0 01 00 08 */	lhz r0, 8(r1)
/* 8039C204  7C 00 F8 40 */	cmplw r0, r31
/* 8039C208  41 82 00 FC */	beq lbl_8039C304
/* 8039C20C  4B FF E6 B5 */	bl mEv_ClearEventKabuPeddler
/* 8039C210  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039C214  A3 E1 00 08 */	lhz r31, 8(r1)
/* 8039C218  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039C21C  38 00 00 45 */	li r0, 0x45
/* 8039C220  3C 63 00 02 */	addis r3, r3, 2
/* 8039C224  B3 FE 05 64 */	sth r31, 0x564(r30)
/* 8039C228  3B A0 00 01 */	li r29, 1
/* 8039C22C  98 03 05 56 */	stb r0, 0x556(r3)
/* 8039C230  48 00 00 D4 */	b lbl_8039C304
lbl_8039C234:
/* 8039C234  A0 61 00 08 */	lhz r3, 8(r1)
/* 8039C238  7C 03 F8 40 */	cmplw r3, r31
/* 8039C23C  41 82 00 C8 */	beq lbl_8039C304
/* 8039C240  38 00 00 47 */	li r0, 0x47
/* 8039C244  B0 7E 05 64 */	sth r3, 0x564(r30)
/* 8039C248  7C 7F 1B 78 */	mr r31, r3
/* 8039C24C  3B A0 00 01 */	li r29, 1
/* 8039C250  98 1E 05 56 */	stb r0, 0x556(r30)
/* 8039C254  48 00 00 B0 */	b lbl_8039C304
lbl_8039C258:
/* 8039C258  A0 61 00 08 */	lhz r3, 8(r1)
/* 8039C25C  20 85 00 01 */	subfic r4, r5, 1
/* 8039C260  4B FF EF B1 */	bl after_n_day
/* 8039C264  88 1E 61 24 */	lbz r0, 0x6124(r30)
/* 8039C268  7C 64 1B 78 */	mr r4, r3
/* 8039C26C  A0 61 00 08 */	lhz r3, 8(r1)
/* 8039C270  7C 9C 23 78 */	mr r28, r4
/* 8039C274  20 80 00 05 */	subfic r4, r0, 5
/* 8039C278  4B FF EF 99 */	bl after_n_day
/* 8039C27C  28 1F 00 00 */	cmplwi r31, 0
/* 8039C280  7C 65 1B 78 */	mr r5, r3
/* 8039C284  41 82 00 18 */	beq lbl_8039C29C
/* 8039C288  7F E3 FB 78 */	mr r3, r31
/* 8039C28C  7F 84 E3 78 */	mr r4, r28
/* 8039C290  4B FF EF 11 */	bl check_date_range
/* 8039C294  2C 03 00 00 */	cmpwi r3, 0
/* 8039C298  40 82 00 58 */	bne lbl_8039C2F0
lbl_8039C29C:
/* 8039C29C  A0 61 00 08 */	lhz r3, 8(r1)
/* 8039C2A0  38 80 00 05 */	li r4, 5
/* 8039C2A4  88 1E 61 22 */	lbz r0, 0x6122(r30)
/* 8039C2A8  88 DE 61 24 */	lbz r6, 0x6124(r30)
/* 8039C2AC  7C A3 02 14 */	add r5, r3, r0
/* 8039C2B0  7C 05 23 D6 */	divw r0, r5, r4
/* 8039C2B4  7C 00 21 D6 */	mullw r0, r0, r4
/* 8039C2B8  7C 80 28 50 */	subf r4, r0, r5
/* 8039C2BC  38 04 00 01 */	addi r0, r4, 1
/* 8039C2C0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8039C2C4  7C 86 00 50 */	subf r4, r6, r0
/* 8039C2C8  4B FF EF 49 */	bl after_n_day
/* 8039C2CC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8039C2D0  7C 7F 1B 78 */	mr r31, r3
/* 8039C2D4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8039C2D8  38 A0 00 44 */	li r5, 0x44
/* 8039C2DC  3C 64 00 02 */	addis r3, r4, 2
/* 8039C2E0  38 00 00 00 */	li r0, 0
/* 8039C2E4  B3 FE 05 64 */	sth r31, 0x564(r30)
/* 8039C2E8  98 A3 05 56 */	stb r5, 0x556(r3)
/* 8039C2EC  98 03 06 87 */	stb r0, 0x687(r3)
lbl_8039C2F0:
/* 8039C2F0  A0 01 00 08 */	lhz r0, 8(r1)
/* 8039C2F4  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 8039C2F8  7C 03 00 40 */	cmplw r3, r0
/* 8039C2FC  40 82 00 08 */	bne lbl_8039C304
/* 8039C300  3B A0 00 44 */	li r29, 0x44
lbl_8039C304:
/* 8039C304  88 1E 61 24 */	lbz r0, 0x6124(r30)
/* 8039C308  28 00 00 06 */	cmplwi r0, 6
/* 8039C30C  41 82 00 1C */	beq lbl_8039C328
/* 8039C310  28 00 00 00 */	cmplwi r0, 0
/* 8039C314  41 82 00 90 */	beq lbl_8039C3A4
/* 8039C318  A0 01 00 08 */	lhz r0, 8(r1)
/* 8039C31C  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 8039C320  7C 03 00 40 */	cmplw r3, r0
/* 8039C324  41 82 00 80 */	beq lbl_8039C3A4
lbl_8039C328:
/* 8039C328  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039C32C  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8039C330  3C 64 00 02 */	addis r3, r4, 2
/* 8039C334  88 03 60 03 */	lbz r0, 0x6003(r3)
/* 8039C338  28 00 00 04 */	cmplwi r0, 4
/* 8039C33C  41 82 00 30 */	beq lbl_8039C36C
/* 8039C340  88 04 00 18 */	lbz r0, 0x18(r4)
/* 8039C344  28 00 00 0F */	cmplwi r0, 0xf
/* 8039C348  41 80 00 24 */	blt lbl_8039C36C
/* 8039C34C  88 03 13 F2 */	lbz r0, 0x13f2(r3)
/* 8039C350  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 8039C354  28 00 00 01 */	cmplwi r0, 1
/* 8039C358  41 82 00 14 */	beq lbl_8039C36C
/* 8039C35C  48 05 19 CD */	bl mSC_LightHouse_travel_check
/* 8039C360  2C 03 00 00 */	cmpwi r3, 0
/* 8039C364  40 82 00 08 */	bne lbl_8039C36C
/* 8039C368  3B A0 00 71 */	li r29, 0x71
lbl_8039C36C:
/* 8039C36C  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8039C370  28 00 00 71 */	cmplwi r0, 0x71
/* 8039C374  40 82 00 30 */	bne lbl_8039C3A4
/* 8039C378  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039C37C  A0 01 00 08 */	lhz r0, 8(r1)
/* 8039C380  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039C384  3C 83 00 02 */	addis r4, r3, 2
/* 8039C388  A0 64 06 82 */	lhz r3, 0x682(r4)
/* 8039C38C  7C 03 00 40 */	cmplw r3, r0
/* 8039C390  41 82 00 14 */	beq lbl_8039C3A4
/* 8039C394  88 64 06 84 */	lbz r3, 0x684(r4)
/* 8039C398  B0 04 06 82 */	sth r0, 0x682(r4)
/* 8039C39C  38 03 00 01 */	addi r0, r3, 1
/* 8039C3A0  98 04 06 84 */	stb r0, 0x684(r4)
lbl_8039C3A4:
/* 8039C3A4  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8039C3A8  28 00 00 44 */	cmplwi r0, 0x44
/* 8039C3AC  41 82 00 28 */	beq lbl_8039C3D4
/* 8039C3B0  28 00 00 71 */	cmplwi r0, 0x71
/* 8039C3B4  41 82 00 20 */	beq lbl_8039C3D4
/* 8039C3B8  48 00 2C 69 */	bl mGH_check_birth2
/* 8039C3BC  2C 03 00 00 */	cmpwi r3, 0
/* 8039C3C0  40 82 00 10 */	bne lbl_8039C3D0
/* 8039C3C4  48 00 2E B1 */	bl mMC_check_birth
/* 8039C3C8  2C 03 00 00 */	cmpwi r3, 0
/* 8039C3CC  41 82 00 08 */	beq lbl_8039C3D4
lbl_8039C3D0:
/* 8039C3D0  3B A0 00 73 */	li r29, 0x73
lbl_8039C3D4:
/* 8039C3D4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039C3D8  38 00 00 77 */	li r0, 0x77
/* 8039C3DC  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8039C3E0  A0 61 00 08 */	lhz r3, 8(r1)
/* 8039C3E4  3F C4 00 02 */	addis r30, r4, 2
/* 8039C3E8  38 80 FF F9 */	li r4, -7
/* 8039C3EC  9B BE 05 57 */	stb r29, 0x557(r30)
/* 8039C3F0  A3 FE 06 80 */	lhz r31, 0x680(r30)
/* 8039C3F4  98 1E 06 85 */	stb r0, 0x685(r30)
/* 8039C3F8  4B FF EE 19 */	bl after_n_day
/* 8039C3FC  7C 7D 1B 78 */	mr r29, r3
/* 8039C400  A0 61 00 08 */	lhz r3, 8(r1)
/* 8039C404  38 80 00 04 */	li r4, 4
/* 8039C408  4B FF EE 09 */	bl after_n_day
/* 8039C40C  28 1F 00 00 */	cmplwi r31, 0
/* 8039C410  7C 65 1B 78 */	mr r5, r3
/* 8039C414  41 82 00 18 */	beq lbl_8039C42C
/* 8039C418  7F E3 FB 78 */	mr r3, r31
/* 8039C41C  7F A4 EB 78 */	mr r4, r29
/* 8039C420  4B FF ED 81 */	bl check_date_range
/* 8039C424  2C 03 00 00 */	cmpwi r3, 0
/* 8039C428  40 82 00 34 */	bne lbl_8039C45C
lbl_8039C42C:
/* 8039C42C  4B CC 08 C9 */	bl fqrand
/* 8039C430  3C 80 80 64 */	lis r4, lit_1134@ha /* 0x80641E18@ha */
/* 8039C434  A0 61 00 08 */	lhz r3, 8(r1)
/* 8039C438  C0 04 1E 18 */	lfs f0, lit_1134@l(r4)  /* 0x80641E18@l */
/* 8039C43C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8039C440  FC 00 00 1E */	fctiwz f0, f0
/* 8039C444  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8039C448  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8039C44C  38 84 00 02 */	addi r4, r4, 2
/* 8039C450  4B FF ED C1 */	bl after_n_day
/* 8039C454  7C 7F 1B 78 */	mr r31, r3
/* 8039C458  B3 FE 06 80 */	sth r31, 0x680(r30)
lbl_8039C45C:
/* 8039C45C  A0 A1 00 08 */	lhz r5, 8(r1)
/* 8039C460  7F E3 FB 78 */	mr r3, r31
/* 8039C464  7F A4 EB 78 */	mr r4, r29
/* 8039C468  4B FF ED 39 */	bl check_date_range
/* 8039C46C  2C 03 00 00 */	cmpwi r3, 0
/* 8039C470  41 82 00 0C */	beq lbl_8039C47C
/* 8039C474  38 00 00 72 */	li r0, 0x72
/* 8039C478  98 1E 06 85 */	stb r0, 0x685(r30)
lbl_8039C47C:
/* 8039C47C  39 61 00 30 */	addi r11, r1, 0x30
/* 8039C480  4B CF EA 9D */	bl func_8009AF1C
/* 8039C484  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8039C488  7C 08 03 A6 */	mtlr r0
/* 8039C48C  38 21 00 30 */	addi r1, r1, 0x30
/* 8039C490  4E 80 00 20 */	blr 
