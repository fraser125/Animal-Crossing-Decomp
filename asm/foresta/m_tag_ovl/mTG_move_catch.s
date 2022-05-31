lbl_805FC6E0:
/* 805FC6E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805FC6E4  7C 08 02 A6 */	mflr r0
/* 805FC6E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805FC6EC  39 61 00 20 */	addi r11, r1, 0x20
/* 805FC6F0  4B A9 E7 E5 */	bl func_8009AED4
/* 805FC6F4  7C 9E 23 78 */	mr r30, r4
/* 805FC6F8  7C 7D 1B 78 */	mr r29, r3
/* 805FC6FC  80 64 00 00 */	lwz r3, 0(r4)
/* 805FC700  7C BF 2B 78 */	mr r31, r5
/* 805FC704  2C 03 00 01 */	cmpwi r3, 1
/* 805FC708  40 82 00 18 */	bne lbl_805FC720
/* 805FC70C  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805FC710  2C 00 00 00 */	cmpwi r0, 0
/* 805FC714  41 82 00 88 */	beq lbl_805FC79C
/* 805FC718  2C 00 00 0D */	cmpwi r0, 0xd
/* 805FC71C  41 82 00 80 */	beq lbl_805FC79C
lbl_805FC720:
/* 805FC720  2C 03 00 0E */	cmpwi r3, 0xe
/* 805FC724  40 82 00 10 */	bne lbl_805FC734
/* 805FC728  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805FC72C  2C 00 00 00 */	cmpwi r0, 0
/* 805FC730  41 82 00 6C */	beq lbl_805FC79C
lbl_805FC734:
/* 805FC734  2C 03 00 11 */	cmpwi r3, 0x11
/* 805FC738  40 82 00 10 */	bne lbl_805FC748
/* 805FC73C  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 805FC740  2C 00 00 0A */	cmpwi r0, 0xa
/* 805FC744  40 82 00 58 */	bne lbl_805FC79C
lbl_805FC748:
/* 805FC748  2C 03 00 0B */	cmpwi r3, 0xb
/* 805FC74C  41 82 00 50 */	beq lbl_805FC79C
/* 805FC750  2C 03 00 17 */	cmpwi r3, 0x17
/* 805FC754  40 82 00 10 */	bne lbl_805FC764
/* 805FC758  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805FC75C  2C 00 00 00 */	cmpwi r0, 0
/* 805FC760  40 82 00 3C */	bne lbl_805FC79C
lbl_805FC764:
/* 805FC764  2C 03 00 18 */	cmpwi r3, 0x18
/* 805FC768  40 82 00 18 */	bne lbl_805FC780
/* 805FC76C  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 805FC770  2C 00 00 14 */	cmpwi r0, 0x14
/* 805FC774  41 82 00 28 */	beq lbl_805FC79C
/* 805FC778  2C 00 00 12 */	cmpwi r0, 0x12
/* 805FC77C  41 82 00 20 */	beq lbl_805FC79C
lbl_805FC780:
/* 805FC780  2C 03 00 1A */	cmpwi r3, 0x1a
/* 805FC784  40 82 00 68 */	bne lbl_805FC7EC
/* 805FC788  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 805FC78C  2C 00 00 17 */	cmpwi r0, 0x17
/* 805FC790  41 82 00 0C */	beq lbl_805FC79C
/* 805FC794  2C 00 00 19 */	cmpwi r0, 0x19
/* 805FC798  40 82 00 54 */	bne lbl_805FC7EC
lbl_805FC79C:
/* 805FC79C  7F A3 EB 78 */	mr r3, r29
/* 805FC7A0  7F E4 FB 78 */	mr r4, r31
/* 805FC7A4  4B FF FA 15 */	bl mTG_check_move_proc
/* 805FC7A8  2C 03 00 00 */	cmpwi r3, 0
/* 805FC7AC  41 82 00 38 */	beq lbl_805FC7E4
/* 805FC7B0  7F A3 EB 78 */	mr r3, r29
/* 805FC7B4  4B FF 2E 31 */	bl func_805EF5E4
/* 805FC7B8  2C 03 00 01 */	cmpwi r3, 1
/* 805FC7BC  40 82 00 14 */	bne lbl_805FC7D0
/* 805FC7C0  7F A3 EB 78 */	mr r3, r29
/* 805FC7C4  7F C4 F3 78 */	mr r4, r30
/* 805FC7C8  4B FF 96 E5 */	bl mTG_catch_proc
/* 805FC7CC  48 00 00 20 */	b lbl_805FC7EC
lbl_805FC7D0:
/* 805FC7D0  7F A3 EB 78 */	mr r3, r29
/* 805FC7D4  7F C4 F3 78 */	mr r4, r30
/* 805FC7D8  7F E5 FB 78 */	mr r5, r31
/* 805FC7DC  4B FF F3 29 */	bl mTG_drop_item
/* 805FC7E0  48 00 00 0C */	b lbl_805FC7EC
lbl_805FC7E4:
/* 805FC7E4  38 60 10 0A */	li r3, 0x100a
/* 805FC7E8  48 03 15 1D */	bl sAdo_SysTrgStart
lbl_805FC7EC:
/* 805FC7EC  39 61 00 20 */	addi r11, r1, 0x20
/* 805FC7F0  4B A9 E7 31 */	bl func_8009AF20
/* 805FC7F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805FC7F8  7C 08 03 A6 */	mtlr r0
/* 805FC7FC  38 21 00 20 */	addi r1, r1, 0x20
/* 805FC800  4E 80 00 20 */	blr 
