lbl_8046D984:
/* 8046D984  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8046D988  7C 08 02 A6 */	mflr r0
/* 8046D98C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8046D990  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8046D994  7C 9F 23 78 */	mr r31, r4
/* 8046D998  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8046D99C  7C 7E 1B 78 */	mr r30, r3
/* 8046D9A0  4B FF FC 39 */	bl func_8046D5D8
/* 8046D9A4  A8 7E 00 7C */	lha r3, 0x7c(r30)
/* 8046D9A8  38 03 FF FF */	addi r0, r3, -1
/* 8046D9AC  B0 1E 00 7C */	sth r0, 0x7c(r30)
/* 8046D9B0  A8 1E 00 7C */	lha r0, 0x7c(r30)
/* 8046D9B4  2C 00 00 00 */	cmpwi r0, 0
/* 8046D9B8  40 80 00 0C */	bge lbl_8046D9C4
/* 8046D9BC  38 00 00 00 */	li r0, 0
/* 8046D9C0  B0 1E 00 7C */	sth r0, 0x7c(r30)
lbl_8046D9C4:
/* 8046D9C4  A8 1E 00 7C */	lha r0, 0x7c(r30)
/* 8046D9C8  2C 00 03 84 */	cmpwi r0, 0x384
/* 8046D9CC  40 81 00 0C */	ble lbl_8046D9D8
/* 8046D9D0  38 00 03 84 */	li r0, 0x384
/* 8046D9D4  B0 1E 00 7C */	sth r0, 0x7c(r30)
lbl_8046D9D8:
/* 8046D9D8  A8 1E 00 7C */	lha r0, 0x7c(r30)
/* 8046D9DC  2C 00 00 96 */	cmpwi r0, 0x96
/* 8046D9E0  40 81 00 90 */	ble lbl_8046DA70
/* 8046D9E4  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8046D9E8  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8046D9EC  C0 23 45 BC */	lfs f1, lit_459@l(r3)  /* 0x806445BC@l */
/* 8046D9F0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8046D9F4  40 82 00 7C */	bne lbl_8046DA70
/* 8046D9F8  7F E3 FB 78 */	mr r3, r31
/* 8046D9FC  4B F6 BC 45 */	bl get_player_actor_withoutCheck
/* 8046DA00  AB E3 00 DE */	lha r31, 0xde(r3)
/* 8046DA04  38 00 00 00 */	li r0, 0
/* 8046DA08  B0 1E 00 7C */	sth r0, 0x7c(r30)
/* 8046DA0C  4B BE F2 E9 */	bl fqrand
/* 8046DA10  3C 80 80 64 */	lis r4, lit_4741@ha /* 0x80644928@ha */
/* 8046DA14  3C 60 80 64 */	lis r3, lit_4828@ha /* 0x8064492C@ha */
/* 8046DA18  C0 44 49 28 */	lfs f2, lit_4741@l(r4)  /* 0x80644928@l */
/* 8046DA1C  C0 03 49 2C */	lfs f0, lit_4828@l(r3)  /* 0x8064492C@l */
/* 8046DA20  EC 22 00 72 */	fmuls f1, f2, f1
/* 8046DA24  FC 20 08 1E */	fctiwz f1, f1
/* 8046DA28  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 8046DA2C  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8046DA30  38 03 00 18 */	addi r0, r3, 0x18
/* 8046DA34  B0 1E 00 6E */	sth r0, 0x6e(r30)
/* 8046DA38  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 8046DA3C  4B BE F2 F1 */	bl fqrand2
/* 8046DA40  3C 80 80 64 */	lis r4, lit_581@ha /* 0x8064461C@ha */
/* 8046DA44  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 8046DA48  C0 44 46 1C */	lfs f2, lit_581@l(r4)  /* 0x8064461C@l */
/* 8046DA4C  C0 03 45 E4 */	lfs f0, lit_505@l(r3)  /* 0x806445E4@l */
/* 8046DA50  EC 22 00 72 */	fmuls f1, f2, f1
/* 8046DA54  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046DA58  FC 00 00 1E */	fctiwz f0, f0
/* 8046DA5C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8046DA60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046DA64  7C 1F 02 14 */	add r0, r31, r0
/* 8046DA68  B0 1E 00 70 */	sth r0, 0x70(r30)
/* 8046DA6C  48 00 04 58 */	b lbl_8046DEC4
lbl_8046DA70:
/* 8046DA70  A8 7E 00 6E */	lha r3, 0x6e(r30)
/* 8046DA74  38 03 FF FF */	addi r0, r3, -1
/* 8046DA78  B0 1E 00 6E */	sth r0, 0x6e(r30)
/* 8046DA7C  A8 7E 00 74 */	lha r3, 0x74(r30)
/* 8046DA80  2C 03 00 00 */	cmpwi r3, 0
/* 8046DA84  40 81 00 0C */	ble lbl_8046DA90
/* 8046DA88  38 03 FF FF */	addi r0, r3, -1
/* 8046DA8C  B0 1E 00 74 */	sth r0, 0x74(r30)
lbl_8046DA90:
/* 8046DA90  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8046DA94  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8046DA98  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8046DA9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046DAA0  40 81 01 E8 */	ble lbl_8046DC88
/* 8046DAA4  A8 1E 00 78 */	lha r0, 0x78(r30)
/* 8046DAA8  A8 7E 00 7A */	lha r3, 0x7a(r30)
/* 8046DAAC  7C 00 18 00 */	cmpw r0, r3
/* 8046DAB0  40 82 00 20 */	bne lbl_8046DAD0
/* 8046DAB4  7C 60 07 35 */	extsh. r0, r3
/* 8046DAB8  41 82 00 10 */	beq lbl_8046DAC8
/* 8046DABC  38 00 00 00 */	li r0, 0
/* 8046DAC0  B0 1E 00 7A */	sth r0, 0x7a(r30)
/* 8046DAC4  48 00 00 0C */	b lbl_8046DAD0
lbl_8046DAC8:
/* 8046DAC8  38 00 F8 E4 */	li r0, -1820
/* 8046DACC  B0 1E 00 7A */	sth r0, 0x7a(r30)
lbl_8046DAD0:
/* 8046DAD0  3C 60 80 64 */	lis r3, lit_509@ha /* 0x806445FC@ha */
/* 8046DAD4  3C 80 80 64 */	lis r4, lit_510@ha /* 0x80644604@ha */
/* 8046DAD8  38 C3 45 FC */	addi r6, r3, lit_509@l /* 0x806445FC@l */
/* 8046DADC  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8046DAE0  38 A4 46 04 */	addi r5, r4, lit_510@l /* 0x80644604@l */
/* 8046DAE4  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8046DAE8  C8 A6 00 00 */	lfd f5, 0(r6)
/* 8046DAEC  FC 60 30 34 */	frsqrte f3, f6
/* 8046DAF0  38 83 46 0C */	addi r4, r3, lit_511@l /* 0x8064460C@l */
/* 8046DAF4  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8046DAF8  C8 85 00 00 */	lfd f4, 0(r5)
/* 8046DAFC  C0 44 00 00 */	lfs f2, 0(r4)
/* 8046DB00  FC 23 00 F2 */	fmul f1, f3, f3
/* 8046DB04  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8046DB08  FC 65 00 F2 */	fmul f3, f5, f3
/* 8046DB0C  FC 26 00 72 */	fmul f1, f6, f1
/* 8046DB10  FC 24 08 28 */	fsub f1, f4, f1
/* 8046DB14  FC 63 00 72 */	fmul f3, f3, f1
/* 8046DB18  FC 23 00 F2 */	fmul f1, f3, f3
/* 8046DB1C  FC 65 00 F2 */	fmul f3, f5, f3
/* 8046DB20  FC 26 00 72 */	fmul f1, f6, f1
/* 8046DB24  FC 24 08 28 */	fsub f1, f4, f1
/* 8046DB28  FC 63 00 72 */	fmul f3, f3, f1
/* 8046DB2C  FC 23 00 F2 */	fmul f1, f3, f3
/* 8046DB30  FC 65 00 F2 */	fmul f3, f5, f3
/* 8046DB34  FC 26 00 72 */	fmul f1, f6, f1
/* 8046DB38  FC 24 08 28 */	fsub f1, f4, f1
/* 8046DB3C  FC 23 00 72 */	fmul f1, f3, f1
/* 8046DB40  FC 26 00 72 */	fmul f1, f6, f1
/* 8046DB44  FC 20 08 18 */	frsp f1, f1
/* 8046DB48  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8046DB4C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8046DB50  EC 22 08 28 */	fsubs f1, f2, f1
/* 8046DB54  EC 42 08 28 */	fsubs f2, f2, f1
/* 8046DB58  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8046DB5C  40 81 00 54 */	ble lbl_8046DBB0
/* 8046DB60  FC 20 10 34 */	frsqrte f1, f2
/* 8046DB64  FC 01 00 72 */	fmul f0, f1, f1
/* 8046DB68  FC 25 00 72 */	fmul f1, f5, f1
/* 8046DB6C  FC 02 00 32 */	fmul f0, f2, f0
/* 8046DB70  FC 04 00 28 */	fsub f0, f4, f0
/* 8046DB74  FC 21 00 32 */	fmul f1, f1, f0
/* 8046DB78  FC 01 00 72 */	fmul f0, f1, f1
/* 8046DB7C  FC 25 00 72 */	fmul f1, f5, f1
/* 8046DB80  FC 02 00 32 */	fmul f0, f2, f0
/* 8046DB84  FC 04 00 28 */	fsub f0, f4, f0
/* 8046DB88  FC 21 00 32 */	fmul f1, f1, f0
/* 8046DB8C  FC 01 00 72 */	fmul f0, f1, f1
/* 8046DB90  FC 25 00 72 */	fmul f1, f5, f1
/* 8046DB94  FC 02 00 32 */	fmul f0, f2, f0
/* 8046DB98  FC 04 00 28 */	fsub f0, f4, f0
/* 8046DB9C  FC 01 00 32 */	fmul f0, f1, f0
/* 8046DBA0  FC 02 00 32 */	fmul f0, f2, f0
/* 8046DBA4  FC 00 00 18 */	frsp f0, f0
/* 8046DBA8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8046DBAC  C0 41 00 10 */	lfs f2, 0x10(r1)
lbl_8046DBB0:
/* 8046DBB0  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8046DBB4  A8 9E 00 70 */	lha r4, 0x70(r30)
/* 8046DBB8  38 A3 46 0C */	addi r5, r3, lit_511@l /* 0x8064460C@l */
/* 8046DBBC  38 7E 00 6A */	addi r3, r30, 0x6a
/* 8046DBC0  C0 05 00 00 */	lfs f0, 0(r5)
/* 8046DBC4  38 A0 03 8E */	li r5, 0x38e
/* 8046DBC8  38 C0 00 2D */	li r6, 0x2d
/* 8046DBCC  EC 20 10 28 */	fsubs f1, f0, f2
/* 8046DBD0  4B F4 D7 41 */	bl add_calc_short_angle2
/* 8046DBD4  7C 60 07 35 */	extsh. r0, r3
/* 8046DBD8  40 82 01 E4 */	bne lbl_8046DDBC
/* 8046DBDC  A8 9E 00 76 */	lha r4, 0x76(r30)
/* 8046DBE0  7F C3 F3 78 */	mr r3, r30
/* 8046DBE4  38 04 0A AA */	addi r0, r4, 0xaaa
/* 8046DBE8  B0 1E 00 76 */	sth r0, 0x76(r30)
/* 8046DBEC  4B FE CF F9 */	bl func_8045ABE4
/* 8046DBF0  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 8046DBF4  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 8046DBF8  EC 01 00 2A */	fadds f0, f1, f0
/* 8046DBFC  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 8046DC00  A8 1E 00 6E */	lha r0, 0x6e(r30)
/* 8046DC04  2C 00 00 00 */	cmpwi r0, 0
/* 8046DC08  40 80 00 38 */	bge lbl_8046DC40
/* 8046DC0C  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8046DC10  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8046DC14  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 8046DC18  4B BE F0 DD */	bl fqrand
/* 8046DC1C  3C 60 80 64 */	lis r3, lit_4829@ha /* 0x80644930@ha */
/* 8046DC20  C0 03 49 30 */	lfs f0, lit_4829@l(r3)  /* 0x80644930@l */
/* 8046DC24  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046DC28  FC 00 00 1E */	fctiwz f0, f0
/* 8046DC2C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8046DC30  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8046DC34  38 03 00 04 */	addi r0, r3, 4
/* 8046DC38  B0 1E 00 6E */	sth r0, 0x6e(r30)
/* 8046DC3C  48 00 00 24 */	b lbl_8046DC60
lbl_8046DC40:
/* 8046DC40  A8 1E 00 8C */	lha r0, 0x8c(r30)
/* 8046DC44  70 00 00 5E */	andi. r0, r0, 0x5e
/* 8046DC48  41 82 00 18 */	beq lbl_8046DC60
/* 8046DC4C  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8046DC50  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8046DC54  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 8046DC58  A8 1E 00 8C */	lha r0, 0x8c(r30)
/* 8046DC5C  B0 1E 00 72 */	sth r0, 0x72(r30)
lbl_8046DC60:
/* 8046DC60  A8 7E 00 76 */	lha r3, 0x76(r30)
/* 8046DC64  4B F4 CE 8D */	bl sin_s
/* 8046DC68  3C 60 80 64 */	lis r3, lit_2695@ha /* 0x806447E4@ha */
/* 8046DC6C  C8 03 47 E4 */	lfd f0, lit_2695@l(r3)  /* 0x806447E4@l */
/* 8046DC70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046DC74  4C 40 13 82 */	cror 2, 0, 2
/* 8046DC78  40 82 01 44 */	bne lbl_8046DDBC
/* 8046DC7C  A8 7E 00 76 */	lha r3, 0x76(r30)
/* 8046DC80  4B F4 CE 71 */	bl sin_s
/* 8046DC84  48 00 01 38 */	b lbl_8046DDBC
lbl_8046DC88:
/* 8046DC88  A8 1E 00 6E */	lha r0, 0x6e(r30)
/* 8046DC8C  2C 00 00 00 */	cmpwi r0, 0
/* 8046DC90  40 80 01 2C */	bge lbl_8046DDBC
/* 8046DC94  3C 60 80 64 */	lis r3, lit_4830@ha /* 0x80644934@ha */
/* 8046DC98  C0 03 49 34 */	lfs f0, lit_4830@l(r3)  /* 0x80644934@l */
/* 8046DC9C  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 8046DCA0  4B BE F0 55 */	bl fqrand
/* 8046DCA4  3C 80 80 64 */	lis r4, lit_4741@ha /* 0x80644928@ha */
/* 8046DCA8  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8046DCAC  C0 04 49 28 */	lfs f0, lit_4741@l(r4)  /* 0x80644928@l */
/* 8046DCB0  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 8046DCB4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046DCB8  FC 00 00 1E */	fctiwz f0, f0
/* 8046DCBC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8046DCC0  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8046DCC4  38 04 00 18 */	addi r0, r4, 0x18
/* 8046DCC8  B0 1E 00 6E */	sth r0, 0x6e(r30)
/* 8046DCCC  80 63 00 00 */	lwz r3, 0(r3)
/* 8046DCD0  A8 03 16 9C */	lha r0, 0x169c(r3)
/* 8046DCD4  2C 00 00 00 */	cmpwi r0, 0
/* 8046DCD8  41 82 00 10 */	beq lbl_8046DCE8
/* 8046DCDC  7F C3 F3 78 */	mr r3, r30
/* 8046DCE0  7F E4 FB 78 */	mr r4, r31
/* 8046DCE4  48 00 01 F9 */	bl okera_dig_down_process_init
lbl_8046DCE8:
/* 8046DCE8  A8 7E 00 72 */	lha r3, 0x72(r30)
/* 8046DCEC  70 60 00 5E */	andi. r0, r3, 0x5e
/* 8046DCF0  41 82 00 58 */	beq lbl_8046DD48
/* 8046DCF4  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 8046DCF8  41 82 00 10 */	beq lbl_8046DD08
/* 8046DCFC  4B BE EF D1 */	bl func_8005CCCC
/* 8046DD00  B0 7E 00 70 */	sth r3, 0x70(r30)
/* 8046DD04  48 00 00 30 */	b lbl_8046DD34
lbl_8046DD08:
/* 8046DD08  54 60 07 7D */	rlwinm. r0, r3, 0, 0x1d, 0x1e
/* 8046DD0C  41 82 00 14 */	beq lbl_8046DD20
/* 8046DD10  A8 1E 00 70 */	lha r0, 0x70(r30)
/* 8046DD14  7C 00 00 D0 */	neg r0, r0
/* 8046DD18  B0 1E 00 70 */	sth r0, 0x70(r30)
/* 8046DD1C  48 00 00 18 */	b lbl_8046DD34
lbl_8046DD20:
/* 8046DD20  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 8046DD24  A8 9E 00 70 */	lha r4, 0x70(r30)
/* 8046DD28  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 8046DD2C  7C 04 00 50 */	subf r0, r4, r0
/* 8046DD30  B0 1E 00 70 */	sth r0, 0x70(r30)
lbl_8046DD34:
/* 8046DD34  A8 7E 00 72 */	lha r3, 0x72(r30)
/* 8046DD38  38 00 FF A1 */	li r0, -95
/* 8046DD3C  7C 60 00 38 */	and r0, r3, r0
/* 8046DD40  B0 1E 00 72 */	sth r0, 0x72(r30)
/* 8046DD44  48 00 00 78 */	b lbl_8046DDBC
lbl_8046DD48:
/* 8046DD48  A8 1E 00 74 */	lha r0, 0x74(r30)
/* 8046DD4C  2C 00 00 00 */	cmpwi r0, 0
/* 8046DD50  40 82 00 34 */	bne lbl_8046DD84
/* 8046DD54  3C 60 80 64 */	lis r3, okera_base_pos@ha /* 0x80644914@ha */
/* 8046DD58  38 9E 00 1C */	addi r4, r30, 0x1c
/* 8046DD5C  38 63 49 14 */	addi r3, r3, okera_base_pos@l /* 0x80644914@l */
/* 8046DD60  4B F4 D3 2D */	bl search_position_distanceXZ
/* 8046DD64  3C 60 80 64 */	lis r3, lit_3443@ha /* 0x80644840@ha */
/* 8046DD68  C0 03 48 40 */	lfs f0, lit_3443@l(r3)  /* 0x80644840@l */
/* 8046DD6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046DD70  40 80 00 14 */	bge lbl_8046DD84
/* 8046DD74  7F C3 F3 78 */	mr r3, r30
/* 8046DD78  7F E4 FB 78 */	mr r4, r31
/* 8046DD7C  48 00 01 61 */	bl okera_dig_down_process_init
/* 8046DD80  48 00 00 3C */	b lbl_8046DDBC
lbl_8046DD84:
/* 8046DD84  4B BE EF A9 */	bl fqrand2
/* 8046DD88  3C 80 80 64 */	lis r4, lit_823@ha /* 0x8064469C@ha */
/* 8046DD8C  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 8046DD90  C0 44 46 9C */	lfs f2, lit_823@l(r4)  /* 0x8064469C@l */
/* 8046DD94  C0 03 45 E4 */	lfs f0, lit_505@l(r3)  /* 0x806445E4@l */
/* 8046DD98  EC 22 00 72 */	fmuls f1, f2, f1
/* 8046DD9C  A8 1E 00 70 */	lha r0, 0x70(r30)
/* 8046DDA0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046DDA4  FC 00 00 1E */	fctiwz f0, f0
/* 8046DDA8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8046DDAC  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8046DDB0  7C 63 07 34 */	extsh r3, r3
/* 8046DDB4  7C 00 1A 14 */	add r0, r0, r3
/* 8046DDB8  B0 1E 00 70 */	sth r0, 0x70(r30)
lbl_8046DDBC:
/* 8046DDBC  3C 60 80 64 */	lis r3, lit_1566@ha /* 0x80644754@ha */
/* 8046DDC0  3C 80 80 64 */	lis r4, lit_509@ha /* 0x806445FC@ha */
/* 8046DDC4  38 A3 47 54 */	addi r5, r3, lit_1566@l /* 0x80644754@l */
/* 8046DDC8  C8 A4 45 FC */	lfd f5, lit_509@l(r4)  /* 0x806445FC@l */
/* 8046DDCC  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8046DDD0  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 8046DDD4  38 A3 46 04 */	addi r5, r3, lit_510@l /* 0x80644604@l */
/* 8046DDD8  FC 60 30 34 */	frsqrte f3, f6
/* 8046DDDC  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8046DDE0  38 83 46 0C */	addi r4, r3, lit_511@l /* 0x8064460C@l */
/* 8046DDE4  C8 85 00 00 */	lfd f4, 0(r5)
/* 8046DDE8  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8046DDEC  C0 44 00 00 */	lfs f2, 0(r4)
/* 8046DDF0  FC 23 00 F2 */	fmul f1, f3, f3
/* 8046DDF4  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8046DDF8  FC 65 00 F2 */	fmul f3, f5, f3
/* 8046DDFC  FC 26 00 72 */	fmul f1, f6, f1
/* 8046DE00  FC 24 08 28 */	fsub f1, f4, f1
/* 8046DE04  FC 63 00 72 */	fmul f3, f3, f1
/* 8046DE08  FC 23 00 F2 */	fmul f1, f3, f3
/* 8046DE0C  FC 65 00 F2 */	fmul f3, f5, f3
/* 8046DE10  FC 26 00 72 */	fmul f1, f6, f1
/* 8046DE14  FC 24 08 28 */	fsub f1, f4, f1
/* 8046DE18  FC 63 00 72 */	fmul f3, f3, f1
/* 8046DE1C  FC 23 00 F2 */	fmul f1, f3, f3
/* 8046DE20  FC 65 00 F2 */	fmul f3, f5, f3
/* 8046DE24  FC 26 00 72 */	fmul f1, f6, f1
/* 8046DE28  FC 24 08 28 */	fsub f1, f4, f1
/* 8046DE2C  FC 23 00 72 */	fmul f1, f3, f1
/* 8046DE30  FC 26 00 72 */	fmul f1, f6, f1
/* 8046DE34  FC 20 08 18 */	frsp f1, f1
/* 8046DE38  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8046DE3C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8046DE40  EC 22 08 28 */	fsubs f1, f2, f1
/* 8046DE44  EC 42 08 28 */	fsubs f2, f2, f1
/* 8046DE48  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8046DE4C  40 81 00 54 */	ble lbl_8046DEA0
/* 8046DE50  FC 20 10 34 */	frsqrte f1, f2
/* 8046DE54  FC 01 00 72 */	fmul f0, f1, f1
/* 8046DE58  FC 25 00 72 */	fmul f1, f5, f1
/* 8046DE5C  FC 02 00 32 */	fmul f0, f2, f0
/* 8046DE60  FC 04 00 28 */	fsub f0, f4, f0
/* 8046DE64  FC 21 00 32 */	fmul f1, f1, f0
/* 8046DE68  FC 01 00 72 */	fmul f0, f1, f1
/* 8046DE6C  FC 25 00 72 */	fmul f1, f5, f1
/* 8046DE70  FC 02 00 32 */	fmul f0, f2, f0
/* 8046DE74  FC 04 00 28 */	fsub f0, f4, f0
/* 8046DE78  FC 21 00 32 */	fmul f1, f1, f0
/* 8046DE7C  FC 01 00 72 */	fmul f0, f1, f1
/* 8046DE80  FC 25 00 72 */	fmul f1, f5, f1
/* 8046DE84  FC 02 00 32 */	fmul f0, f2, f0
/* 8046DE88  FC 04 00 28 */	fsub f0, f4, f0
/* 8046DE8C  FC 01 00 32 */	fmul f0, f1, f0
/* 8046DE90  FC 02 00 32 */	fmul f0, f2, f0
/* 8046DE94  FC 00 00 18 */	frsp f0, f0
/* 8046DE98  D0 01 00 08 */	stfs f0, 8(r1)
/* 8046DE9C  C0 41 00 08 */	lfs f2, 8(r1)
lbl_8046DEA0:
/* 8046DEA0  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8046DEA4  A8 9E 00 7A */	lha r4, 0x7a(r30)
/* 8046DEA8  38 A3 46 0C */	addi r5, r3, lit_511@l /* 0x8064460C@l */
/* 8046DEAC  38 7E 00 78 */	addi r3, r30, 0x78
/* 8046DEB0  C0 05 00 00 */	lfs f0, 0(r5)
/* 8046DEB4  38 A0 00 E3 */	li r5, 0xe3
/* 8046DEB8  38 C0 00 2D */	li r6, 0x2d
/* 8046DEBC  EC 20 10 28 */	fsubs f1, f0, f2
/* 8046DEC0  4B F4 D4 51 */	bl add_calc_short_angle2
lbl_8046DEC4:
/* 8046DEC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046DEC8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8046DECC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8046DED0  7C 08 03 A6 */	mtlr r0
/* 8046DED4  38 21 00 30 */	addi r1, r1, 0x30
/* 8046DED8  4E 80 00 20 */	blr 
