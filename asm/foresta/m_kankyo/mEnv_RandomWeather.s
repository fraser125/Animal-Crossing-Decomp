lbl_803B9D48:
/* 803B9D48  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803B9D4C  7C 08 02 A6 */	mflr r0
/* 803B9D50  90 01 00 34 */	stw r0, 0x34(r1)
/* 803B9D54  39 61 00 30 */	addi r11, r1, 0x30
/* 803B9D58  4B CE 11 6D */	bl func_8009AEC4
/* 803B9D5C  7C 7E 1B 78 */	mr r30, r3
/* 803B9D60  7C 9F 23 78 */	mr r31, r4
/* 803B9D64  4B FF FF 85 */	bl mEnv_GetWeatherChangeStep
/* 803B9D68  3C 80 80 64 */	lis r4, weather_table@ha /* 0x806423F4@ha */
/* 803B9D6C  54 60 10 3A */	slwi r0, r3, 2
/* 803B9D70  38 64 23 F4 */	addi r3, r4, weather_table@l /* 0x806423F4@l */
/* 803B9D74  7C 03 00 2E */	lwzx r0, r3, r0
/* 803B9D78  54 1C 47 3E */	rlwinm r28, r0, 8, 0x1c, 0x1f
/* 803B9D7C  54 1B 87 3E */	rlwinm r27, r0, 0x10, 0x1c, 0x1f
/* 803B9D80  54 1A 67 3E */	rlwinm r26, r0, 0xc, 0x1c, 0x1f
/* 803B9D84  54 1D C7 3E */	rlwinm r29, r0, 0x18, 0x1c, 0x1f
/* 803B9D88  54 19 A7 3E */	rlwinm r25, r0, 0x14, 0x1c, 0x1f
/* 803B9D8C  4B CA 2F 69 */	bl fqrand
/* 803B9D90  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80642444@ha */
/* 803B9D94  C0 03 24 44 */	lfs f0, lit_527@l(r3)  /* 0x80642444@l */
/* 803B9D98  EC 20 00 72 */	fmuls f1, f0, f1
/* 803B9D9C  4B CE 10 09 */	bl func_8009ADA4
/* 803B9DA0  7C 03 E0 40 */	cmplw r3, r28
/* 803B9DA4  40 80 00 18 */	bge lbl_803B9DBC
/* 803B9DA8  38 60 00 00 */	li r3, 0
/* 803B9DAC  38 00 00 01 */	li r0, 1
/* 803B9DB0  B0 7E 00 00 */	sth r3, 0(r30)
/* 803B9DB4  B0 1F 00 00 */	sth r0, 0(r31)
/* 803B9DB8  48 00 00 AC */	b lbl_803B9E64
lbl_803B9DBC:
/* 803B9DBC  7C 1C DA 14 */	add r0, r28, r27
/* 803B9DC0  7C 03 00 40 */	cmplw r3, r0
/* 803B9DC4  40 80 00 14 */	bge lbl_803B9DD8
/* 803B9DC8  38 00 00 01 */	li r0, 1
/* 803B9DCC  B0 1E 00 00 */	sth r0, 0(r30)
/* 803B9DD0  B0 1F 00 00 */	sth r0, 0(r31)
/* 803B9DD4  48 00 00 90 */	b lbl_803B9E64
lbl_803B9DD8:
/* 803B9DD8  7C 1A 02 14 */	add r0, r26, r0
/* 803B9DDC  7C 03 00 40 */	cmplw r3, r0
/* 803B9DE0  40 80 00 18 */	bge lbl_803B9DF8
/* 803B9DE4  38 60 00 01 */	li r3, 1
/* 803B9DE8  38 00 00 03 */	li r0, 3
/* 803B9DEC  B0 7E 00 00 */	sth r3, 0(r30)
/* 803B9DF0  B0 1F 00 00 */	sth r0, 0(r31)
/* 803B9DF4  48 00 00 70 */	b lbl_803B9E64
lbl_803B9DF8:
/* 803B9DF8  7C 1D 02 14 */	add r0, r29, r0
/* 803B9DFC  7C 03 00 40 */	cmplw r3, r0
/* 803B9E00  40 80 00 18 */	bge lbl_803B9E18
/* 803B9E04  38 60 00 02 */	li r3, 2
/* 803B9E08  38 00 00 01 */	li r0, 1
/* 803B9E0C  B0 7E 00 00 */	sth r3, 0(r30)
/* 803B9E10  B0 1F 00 00 */	sth r0, 0(r31)
/* 803B9E14  48 00 00 50 */	b lbl_803B9E64
lbl_803B9E18:
/* 803B9E18  7C 19 02 14 */	add r0, r25, r0
/* 803B9E1C  7C 03 00 40 */	cmplw r3, r0
/* 803B9E20  40 80 00 18 */	bge lbl_803B9E38
/* 803B9E24  38 60 00 02 */	li r3, 2
/* 803B9E28  38 00 00 03 */	li r0, 3
/* 803B9E2C  B0 7E 00 00 */	sth r3, 0(r30)
/* 803B9E30  B0 1F 00 00 */	sth r0, 0(r31)
/* 803B9E34  48 00 00 30 */	b lbl_803B9E64
lbl_803B9E38:
/* 803B9E38  7C 1D 02 14 */	add r0, r29, r0
/* 803B9E3C  7C 03 00 40 */	cmplw r3, r0
/* 803B9E40  40 80 00 18 */	bge lbl_803B9E58
/* 803B9E44  38 60 00 03 */	li r3, 3
/* 803B9E48  38 00 00 01 */	li r0, 1
/* 803B9E4C  B0 7E 00 00 */	sth r3, 0(r30)
/* 803B9E50  B0 1F 00 00 */	sth r0, 0(r31)
/* 803B9E54  48 00 00 10 */	b lbl_803B9E64
lbl_803B9E58:
/* 803B9E58  38 00 00 03 */	li r0, 3
/* 803B9E5C  B0 1E 00 00 */	sth r0, 0(r30)
/* 803B9E60  B0 1F 00 00 */	sth r0, 0(r31)
lbl_803B9E64:
/* 803B9E64  39 61 00 30 */	addi r11, r1, 0x30
/* 803B9E68  4B CE 10 A9 */	bl func_8009AF10
/* 803B9E6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803B9E70  7C 08 03 A6 */	mtlr r0
/* 803B9E74  38 21 00 30 */	addi r1, r1, 0x30
/* 803B9E78  4E 80 00 20 */	blr 
