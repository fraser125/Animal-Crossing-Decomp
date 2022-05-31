lbl_80461918:
/* 80461918  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046191C  7C 08 02 A6 */	mflr r0
/* 80461920  90 01 00 24 */	stw r0, 0x24(r1)
/* 80461924  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80461928  7C 9F 23 78 */	mr r31, r4
/* 8046192C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80461930  7C 7E 1B 78 */	mr r30, r3
/* 80461934  A8 03 00 76 */	lha r0, 0x76(r3)
/* 80461938  2C 00 FB 06 */	cmpwi r0, -1274
/* 8046193C  40 82 00 18 */	bne lbl_80461954
/* 80461940  A8 1E 00 78 */	lha r0, 0x78(r30)
/* 80461944  2C 00 00 00 */	cmpwi r0, 0
/* 80461948  41 82 00 0C */	beq lbl_80461954
/* 8046194C  38 00 00 00 */	li r0, 0
/* 80461950  B0 1E 00 78 */	sth r0, 0x78(r30)
lbl_80461954:
/* 80461954  3C 60 80 64 */	lis r3, lit_509@ha /* 0x806445FC@ha */
/* 80461958  3C 80 80 64 */	lis r4, lit_510@ha /* 0x80644604@ha */
/* 8046195C  38 C3 45 FC */	addi r6, r3, lit_509@l /* 0x806445FC@l */
/* 80461960  C8 C6 00 00 */	lfd f6, 0(r6)
/* 80461964  38 A4 46 04 */	addi r5, r4, lit_510@l /* 0x80644604@l */
/* 80461968  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8046196C  C8 A6 00 00 */	lfd f5, 0(r6)
/* 80461970  FC 60 30 34 */	frsqrte f3, f6
/* 80461974  38 83 46 0C */	addi r4, r3, lit_511@l /* 0x8064460C@l */
/* 80461978  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8046197C  C8 85 00 00 */	lfd f4, 0(r5)
/* 80461980  C0 44 00 00 */	lfs f2, 0(r4)
/* 80461984  FC 23 00 F2 */	fmul f1, f3, f3
/* 80461988  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8046198C  FC 65 00 F2 */	fmul f3, f5, f3
/* 80461990  FC 26 00 72 */	fmul f1, f6, f1
/* 80461994  FC 24 08 28 */	fsub f1, f4, f1
/* 80461998  FC 63 00 72 */	fmul f3, f3, f1
/* 8046199C  FC 23 00 F2 */	fmul f1, f3, f3
/* 804619A0  FC 65 00 F2 */	fmul f3, f5, f3
/* 804619A4  FC 26 00 72 */	fmul f1, f6, f1
/* 804619A8  FC 24 08 28 */	fsub f1, f4, f1
/* 804619AC  FC 63 00 72 */	fmul f3, f3, f1
/* 804619B0  FC 23 00 F2 */	fmul f1, f3, f3
/* 804619B4  FC 65 00 F2 */	fmul f3, f5, f3
/* 804619B8  FC 26 00 72 */	fmul f1, f6, f1
/* 804619BC  FC 24 08 28 */	fsub f1, f4, f1
/* 804619C0  FC 23 00 72 */	fmul f1, f3, f1
/* 804619C4  FC 26 00 72 */	fmul f1, f6, f1
/* 804619C8  FC 20 08 18 */	frsp f1, f1
/* 804619CC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804619D0  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804619D4  EC 22 08 28 */	fsubs f1, f2, f1
/* 804619D8  EC 42 08 28 */	fsubs f2, f2, f1
/* 804619DC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804619E0  40 81 00 54 */	ble lbl_80461A34
/* 804619E4  FC 20 10 34 */	frsqrte f1, f2
/* 804619E8  FC 01 00 72 */	fmul f0, f1, f1
/* 804619EC  FC 25 00 72 */	fmul f1, f5, f1
/* 804619F0  FC 02 00 32 */	fmul f0, f2, f0
/* 804619F4  FC 04 00 28 */	fsub f0, f4, f0
/* 804619F8  FC 21 00 32 */	fmul f1, f1, f0
/* 804619FC  FC 01 00 72 */	fmul f0, f1, f1
/* 80461A00  FC 25 00 72 */	fmul f1, f5, f1
/* 80461A04  FC 02 00 32 */	fmul f0, f2, f0
/* 80461A08  FC 04 00 28 */	fsub f0, f4, f0
/* 80461A0C  FC 21 00 32 */	fmul f1, f1, f0
/* 80461A10  FC 01 00 72 */	fmul f0, f1, f1
/* 80461A14  FC 25 00 72 */	fmul f1, f5, f1
/* 80461A18  FC 02 00 32 */	fmul f0, f2, f0
/* 80461A1C  FC 04 00 28 */	fsub f0, f4, f0
/* 80461A20  FC 01 00 32 */	fmul f0, f1, f0
/* 80461A24  FC 02 00 32 */	fmul f0, f2, f0
/* 80461A28  FC 00 00 18 */	frsp f0, f0
/* 80461A2C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80461A30  C0 41 00 08 */	lfs f2, 8(r1)
lbl_80461A34:
/* 80461A34  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 80461A38  A8 9E 00 70 */	lha r4, 0x70(r30)
/* 80461A3C  38 A3 46 0C */	addi r5, r3, lit_511@l /* 0x8064460C@l */
/* 80461A40  38 7E 00 6A */	addi r3, r30, 0x6a
/* 80461A44  C0 05 00 00 */	lfs f0, 0(r5)
/* 80461A48  38 A0 0A AA */	li r5, 0xaaa
/* 80461A4C  38 C0 00 2D */	li r6, 0x2d
/* 80461A50  EC 20 10 28 */	fsubs f1, f0, f2
/* 80461A54  4B F5 98 BD */	bl add_calc_short_angle2
/* 80461A58  7C 60 07 35 */	extsh. r0, r3
/* 80461A5C  40 82 01 14 */	bne lbl_80461B70
/* 80461A60  A8 1E 00 74 */	lha r0, 0x74(r30)
/* 80461A64  2C 00 00 00 */	cmpwi r0, 0
/* 80461A68  40 82 00 C0 */	bne lbl_80461B28
/* 80461A6C  4B BF B2 89 */	bl fqrand
/* 80461A70  3C 60 80 64 */	lis r3, lit_677@ha /* 0x80644650@ha */
/* 80461A74  C0 03 46 50 */	lfs f0, lit_677@l(r3)  /* 0x80644650@l */
/* 80461A78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80461A7C  40 81 00 AC */	ble lbl_80461B28
/* 80461A80  38 00 00 01 */	li r0, 1
/* 80461A84  B0 1E 00 74 */	sth r0, 0x74(r30)
/* 80461A88  4B BF B2 6D */	bl fqrand
/* 80461A8C  3C 60 80 64 */	lis r3, lit_506@ha /* 0x806445E8@ha */
/* 80461A90  C0 03 45 E8 */	lfs f0, lit_506@l(r3)  /* 0x806445E8@l */
/* 80461A94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80461A98  4C 41 13 82 */	cror 2, 1, 2
/* 80461A9C  40 82 00 44 */	bne lbl_80461AE0
/* 80461AA0  4B BF B2 55 */	bl fqrand
/* 80461AA4  3C 80 80 64 */	lis r4, lit_581@ha /* 0x8064461C@ha */
/* 80461AA8  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 80461AAC  C0 44 46 1C */	lfs f2, lit_581@l(r4)  /* 0x8064461C@l */
/* 80461AB0  C0 03 45 E4 */	lfs f0, lit_505@l(r3)  /* 0x806445E4@l */
/* 80461AB4  EC 22 00 72 */	fmuls f1, f2, f1
/* 80461AB8  A8 1E 00 70 */	lha r0, 0x70(r30)
/* 80461ABC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80461AC0  FC 00 00 1E */	fctiwz f0, f0
/* 80461AC4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80461AC8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80461ACC  38 63 0E 38 */	addi r3, r3, 0xe38
/* 80461AD0  7C 63 07 34 */	extsh r3, r3
/* 80461AD4  7C 00 1A 14 */	add r0, r0, r3
/* 80461AD8  B0 1E 00 70 */	sth r0, 0x70(r30)
/* 80461ADC  48 00 00 40 */	b lbl_80461B1C
lbl_80461AE0:
/* 80461AE0  4B BF B2 15 */	bl fqrand
/* 80461AE4  3C 80 80 64 */	lis r4, lit_581@ha /* 0x8064461C@ha */
/* 80461AE8  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 80461AEC  C0 44 46 1C */	lfs f2, lit_581@l(r4)  /* 0x8064461C@l */
/* 80461AF0  C0 03 45 E4 */	lfs f0, lit_505@l(r3)  /* 0x806445E4@l */
/* 80461AF4  EC 22 00 72 */	fmuls f1, f2, f1
/* 80461AF8  A8 1E 00 70 */	lha r0, 0x70(r30)
/* 80461AFC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80461B00  FC 00 00 1E */	fctiwz f0, f0
/* 80461B04  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80461B08  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80461B0C  38 63 0E 38 */	addi r3, r3, 0xe38
/* 80461B10  7C 63 07 34 */	extsh r3, r3
/* 80461B14  7C 03 00 50 */	subf r0, r3, r0
/* 80461B18  B0 1E 00 70 */	sth r0, 0x70(r30)
lbl_80461B1C:
/* 80461B1C  38 00 FB 06 */	li r0, -1274
/* 80461B20  B0 1E 00 78 */	sth r0, 0x78(r30)
/* 80461B24  48 00 00 4C */	b lbl_80461B70
lbl_80461B28:
/* 80461B28  4B BF B1 CD */	bl fqrand
/* 80461B2C  3C 60 80 64 */	lis r3, lit_504@ha /* 0x806445E0@ha */
/* 80461B30  C0 03 45 E0 */	lfs f0, lit_504@l(r3)  /* 0x806445E0@l */
/* 80461B34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80461B38  41 81 00 1C */	bgt lbl_80461B54
/* 80461B3C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80461B40  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80461B44  80 63 00 00 */	lwz r3, 0(r3)
/* 80461B48  A8 03 16 98 */	lha r0, 0x1698(r3)
/* 80461B4C  2C 00 00 00 */	cmpwi r0, 0
/* 80461B50  41 82 00 14 */	beq lbl_80461B64
lbl_80461B54:
/* 80461B54  7F C3 F3 78 */	mr r3, r30
/* 80461B58  7F E4 FB 78 */	mr r4, r31
/* 80461B5C  48 00 00 2D */	bl minsect_batta_silent_process_init
/* 80461B60  48 00 00 10 */	b lbl_80461B70
lbl_80461B64:
/* 80461B64  7F C3 F3 78 */	mr r3, r30
/* 80461B68  7F E4 FB 78 */	mr r4, r31
/* 80461B6C  48 00 01 2D */	bl minsect_batta_jump_wait_process_init
lbl_80461B70:
/* 80461B70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80461B74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80461B78  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80461B7C  7C 08 03 A6 */	mtlr r0
/* 80461B80  38 21 00 20 */	addi r1, r1, 0x20
/* 80461B84  4E 80 00 20 */	blr 
