lbl_80558828:
/* 80558828  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8055882C  7C 08 02 A6 */	mflr r0
/* 80558830  90 01 00 34 */	stw r0, 0x34(r1)
/* 80558834  39 61 00 30 */	addi r11, r1, 0x30
/* 80558838  4B B4 26 99 */	bl func_8009AED0
/* 8055883C  3C A0 80 56 */	lis r5, aMJN3_act_proc@ha /* 0x805585C0@ha */
/* 80558840  3C C0 80 6A */	lis r6, data_806A6990@ha /* 0x806A6990@ha */
/* 80558844  38 05 85 C0 */	addi r0, r5, aMJN3_act_proc@l /* 0x805585C0@l */
/* 80558848  7C 7E 1B 78 */	mr r30, r3
/* 8055884C  90 03 08 04 */	stw r0, 0x804(r3)
/* 80558850  7C 9D 23 78 */	mr r29, r4
/* 80558854  3B E6 69 90 */	addi r31, r6, data_806A6990@l /* 0x806A6990@l */
/* 80558858  4B FF FD 41 */	bl func_80558598
/* 8055885C  38 00 00 FE */	li r0, 0xfe
/* 80558860  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80558864  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80558868  98 1E 00 D6 */	stb r0, 0xd6(r30)
/* 8055886C  3C 64 00 03 */	addis r3, r4, 3
/* 80558870  38 00 00 00 */	li r0, 0
/* 80558874  98 03 88 69 */	stb r0, -0x7797(r3)
/* 80558878  88 1D 00 E5 */	lbz r0, 0xe5(r29)
/* 8055887C  2C 00 00 01 */	cmpwi r0, 1
/* 80558880  40 82 00 0C */	bne lbl_8055888C
/* 80558884  38 60 00 04 */	li r3, 4
/* 80558888  48 00 00 10 */	b lbl_80558898
lbl_8055888C:
/* 8055888C  3C 64 00 02 */	addis r3, r4, 2
/* 80558890  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 80558894  4B E5 AD 25 */	bl mHS_get_arrange_idx
lbl_80558898:
/* 80558898  54 7C 10 3A */	slwi r28, r3, 2
/* 8055889C  38 9F 00 B0 */	addi r4, r31, 0xb0
/* 805588A0  7C 04 E4 2E */	lfsx f0, r4, r28
/* 805588A4  54 60 08 3C */	slwi r0, r3, 1
/* 805588A8  3C 80 80 65 */	lis r4, lit_668@ha /* 0x80649678@ha */
/* 805588AC  38 DF 00 C4 */	addi r6, r31, 0xc4
/* 805588B0  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 805588B4  38 BF 00 D8 */	addi r5, r31, 0xd8
/* 805588B8  C0 24 96 78 */	lfs f1, lit_668@l(r4)  /* 0x80649678@l */
/* 805588BC  38 61 00 08 */	addi r3, r1, 8
/* 805588C0  7C 06 E4 2E */	lfsx f0, r6, r28
/* 805588C4  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 805588C8  7C 05 02 AE */	lhax r0, r5, r0
/* 805588CC  B0 1E 00 DE */	sth r0, 0xde(r30)
/* 805588D0  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 805588D4  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 805588D8  90 81 00 08 */	stw r4, 8(r1)
/* 805588DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805588E0  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 805588E4  90 01 00 10 */	stw r0, 0x10(r1)
/* 805588E8  4B E3 6F 39 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 805588EC  D0 3E 00 2C */	stfs f1, 0x2c(r30)
/* 805588F0  38 BF 00 E4 */	addi r5, r31, 0xe4
/* 805588F4  7F C3 F3 78 */	mr r3, r30
/* 805588F8  7F A4 EB 78 */	mr r4, r29
/* 805588FC  7C A5 E0 2E */	lwzx r5, r5, r28
/* 80558900  48 00 00 E1 */	bl aMJN3_setup_think_proc
/* 80558904  39 61 00 30 */	addi r11, r1, 0x30
/* 80558908  4B B4 26 15 */	bl func_8009AF1C
/* 8055890C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80558910  7C 08 03 A6 */	mtlr r0
/* 80558914  38 21 00 30 */	addi r1, r1, 0x30
/* 80558918  4E 80 00 20 */	blr 
