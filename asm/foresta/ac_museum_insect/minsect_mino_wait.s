lbl_804682D4:
/* 804682D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804682D8  7C 08 02 A6 */	mflr r0
/* 804682DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804682E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804682E4  7C 7F 1B 78 */	mr r31, r3
/* 804682E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804682EC  7C 9E 23 78 */	mr r30, r4
/* 804682F0  A8 63 00 6E */	lha r3, 0x6e(r3)
/* 804682F4  38 03 FF FF */	addi r0, r3, -1
/* 804682F8  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 804682FC  A8 1F 00 6E */	lha r0, 0x6e(r31)
/* 80468300  2C 00 00 00 */	cmpwi r0, 0
/* 80468304  40 80 00 B8 */	bge lbl_804683BC
/* 80468308  3C 80 80 64 */	lis r4, mino_top_pos@ha /* 0x80644818@ha */
/* 8046830C  3C 60 80 64 */	lis r3, lit_507@ha /* 0x806445EC@ha */
/* 80468310  38 84 48 18 */	addi r4, r4, mino_top_pos@l /* 0x80644818@l */
/* 80468314  C0 03 45 EC */	lfs f0, lit_507@l(r3)  /* 0x806445EC@l */
/* 80468318  C0 24 00 04 */	lfs f1, 4(r4)
/* 8046831C  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 80468320  EC 01 00 28 */	fsubs f0, f1, f0
/* 80468324  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80468328  4C 41 13 82 */	cror 2, 1, 2
/* 8046832C  40 82 00 44 */	bne lbl_80468370
/* 80468330  4B BF 49 C5 */	bl fqrand
/* 80468334  3C 60 80 64 */	lis r3, lit_584@ha /* 0x8064462C@ha */
/* 80468338  C0 03 46 2C */	lfs f0, lit_584@l(r3)  /* 0x8064462C@l */
/* 8046833C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80468340  41 81 00 1C */	bgt lbl_8046835C
/* 80468344  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80468348  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8046834C  80 63 00 00 */	lwz r3, 0(r3)
/* 80468350  A8 03 16 BC */	lha r0, 0x16bc(r3)
/* 80468354  2C 00 00 00 */	cmpwi r0, 0
/* 80468358  41 82 00 18 */	beq lbl_80468370
lbl_8046835C:
/* 8046835C  7F E3 FB 78 */	mr r3, r31
/* 80468360  7F C5 F3 78 */	mr r5, r30
/* 80468364  38 80 00 03 */	li r4, 3
/* 80468368  48 00 02 CD */	bl minsect_mino_setupAction
/* 8046836C  48 00 00 50 */	b lbl_804683BC
lbl_80468370:
/* 80468370  4B BF 49 85 */	bl fqrand
/* 80468374  3C 60 80 64 */	lis r3, lit_506@ha /* 0x806445E8@ha */
/* 80468378  C0 03 45 E8 */	lfs f0, lit_506@l(r3)  /* 0x806445E8@l */
/* 8046837C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80468380  40 81 00 18 */	ble lbl_80468398
/* 80468384  7F E3 FB 78 */	mr r3, r31
/* 80468388  7F C5 F3 78 */	mr r5, r30
/* 8046838C  38 80 00 01 */	li r4, 1
/* 80468390  48 00 02 A5 */	bl minsect_mino_setupAction
/* 80468394  48 00 00 28 */	b lbl_804683BC
lbl_80468398:
/* 80468398  4B BF 49 5D */	bl fqrand
/* 8046839C  3C 60 80 64 */	lis r3, lit_762@ha /* 0x80644664@ha */
/* 804683A0  C0 03 46 64 */	lfs f0, lit_762@l(r3)  /* 0x80644664@l */
/* 804683A4  EC 00 00 72 */	fmuls f0, f0, f1
/* 804683A8  FC 00 00 1E */	fctiwz f0, f0
/* 804683AC  D8 01 00 08 */	stfd f0, 8(r1)
/* 804683B0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 804683B4  38 03 00 28 */	addi r0, r3, 0x28
/* 804683B8  B0 1F 00 6E */	sth r0, 0x6e(r31)
lbl_804683BC:
/* 804683BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804683C0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804683C4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804683C8  7C 08 03 A6 */	mtlr r0
/* 804683CC  38 21 00 20 */	addi r1, r1, 0x20
/* 804683D0  4E 80 00 20 */	blr 