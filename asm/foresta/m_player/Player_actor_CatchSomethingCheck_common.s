lbl_804F3290:
/* 804F3290  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F3294  7C 08 02 A6 */	mflr r0
/* 804F3298  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F329C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804F32A0  3B E0 00 00 */	li r31, 0
/* 804F32A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804F32A8  7C 7E 1B 78 */	mr r30, r3
/* 804F32AC  C0 03 01 84 */	lfs f0, 0x184(r3)
/* 804F32B0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804F32B4  40 81 00 B8 */	ble lbl_804F336C
/* 804F32B8  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804F32BC  80 1E 0E 70 */	lwz r0, 0xe70(r30)
/* 804F32C0  C0 3E 0D 18 */	lfs f1, 0xd18(r30)
/* 804F32C4  C0 04 6C 4C */	lfs f0, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804F32C8  28 00 00 00 */	cmplwi r0, 0
/* 804F32CC  EC 01 00 2A */	fadds f0, f1, f0
/* 804F32D0  D0 1E 0D 18 */	stfs f0, 0xd18(r30)
/* 804F32D4  40 82 00 94 */	bne lbl_804F3368
/* 804F32D8  38 81 00 0C */	addi r4, r1, 0xc
/* 804F32DC  38 A1 00 08 */	addi r5, r1, 8
/* 804F32E0  4B FF FE 4D */	bl Player_actor_CheckCapture_forNet
/* 804F32E4  2C 03 00 00 */	cmpwi r3, 0
/* 804F32E8  41 82 00 84 */	beq lbl_804F336C
/* 804F32EC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804F32F0  90 1E 0E 70 */	stw r0, 0xe70(r30)
/* 804F32F4  88 01 00 08 */	lbz r0, 8(r1)
/* 804F32F8  98 1E 0E 74 */	stb r0, 0xe74(r30)
/* 804F32FC  88 01 00 08 */	lbz r0, 8(r1)
/* 804F3300  7C 00 07 75 */	extsb. r0, r0
/* 804F3304  40 82 00 1C */	bne lbl_804F3320
/* 804F3308  80 61 00 0C */	lwz r3, 0xc(r1)
/* 804F330C  28 03 00 00 */	cmplwi r3, 0
/* 804F3310  41 82 00 10 */	beq lbl_804F3320
/* 804F3314  80 03 01 D0 */	lwz r0, 0x1d0(r3)
/* 804F3318  90 1E 0F 2C */	stw r0, 0xf2c(r30)
/* 804F331C  48 00 00 3C */	b lbl_804F3358
lbl_804F3320:
/* 804F3320  80 61 00 0C */	lwz r3, 0xc(r1)
/* 804F3324  28 03 00 00 */	cmplwi r3, 0
/* 804F3328  41 82 00 28 */	beq lbl_804F3350
/* 804F332C  A8 03 00 00 */	lha r0, 0(r3)
/* 804F3330  2C 00 00 A4 */	cmpwi r0, 0xa4
/* 804F3334  40 82 00 10 */	bne lbl_804F3344
/* 804F3338  38 00 00 08 */	li r0, 8
/* 804F333C  90 1E 0F 2C */	stw r0, 0xf2c(r30)
/* 804F3340  48 00 00 18 */	b lbl_804F3358
lbl_804F3344:
/* 804F3344  38 00 00 26 */	li r0, 0x26
/* 804F3348  90 1E 0F 2C */	stw r0, 0xf2c(r30)
/* 804F334C  48 00 00 0C */	b lbl_804F3358
lbl_804F3350:
/* 804F3350  38 00 FF FF */	li r0, -1
/* 804F3354  90 1E 0F 2C */	stw r0, 0xf2c(r30)
lbl_804F3358:
/* 804F3358  7F C3 F3 78 */	mr r3, r30
/* 804F335C  4B FE C1 01 */	bl Player_actor_sound_AMI_GET
/* 804F3360  3B E0 00 01 */	li r31, 1
/* 804F3364  48 00 00 08 */	b lbl_804F336C
lbl_804F3368:
/* 804F3368  3B E0 00 02 */	li r31, 2
lbl_804F336C:
/* 804F336C  7F C3 F3 78 */	mr r3, r30
/* 804F3370  4B FE 46 0D */	bl Player_actor_Reset_Item_net_catch_request_table
/* 804F3374  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F3378  7F E3 FB 78 */	mr r3, r31
/* 804F337C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804F3380  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804F3384  7C 08 03 A6 */	mtlr r0
/* 804F3388  38 21 00 20 */	addi r1, r1, 0x20
/* 804F338C  4E 80 00 20 */	blr 
