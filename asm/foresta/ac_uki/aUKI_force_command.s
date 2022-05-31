lbl_804AE6A4:
/* 804AE6A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804AE6A8  7C 08 02 A6 */	mflr r0
/* 804AE6AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804AE6B0  39 61 00 20 */	addi r11, r1, 0x20
/* 804AE6B4  4B BE C8 21 */	bl func_8009AED4
/* 804AE6B8  80 03 02 34 */	lwz r0, 0x234(r3)
/* 804AE6BC  7C 7F 1B 78 */	mr r31, r3
/* 804AE6C0  7C 9D 23 78 */	mr r29, r4
/* 804AE6C4  3B C0 00 00 */	li r30, 0
/* 804AE6C8  2C 00 00 08 */	cmpwi r0, 8
/* 804AE6CC  41 82 00 14 */	beq lbl_804AE6E0
/* 804AE6D0  40 80 00 84 */	bge lbl_804AE754
/* 804AE6D4  2C 00 00 07 */	cmpwi r0, 7
/* 804AE6D8  40 80 00 1C */	bge lbl_804AE6F4
/* 804AE6DC  48 00 00 78 */	b lbl_804AE754
lbl_804AE6E0:
/* 804AE6E0  3B C0 00 01 */	li r30, 1
/* 804AE6E4  38 A0 00 0A */	li r5, 0xa
/* 804AE6E8  38 C0 00 00 */	li r6, 0
/* 804AE6EC  48 00 0C 91 */	bl aUKI_set_proc
/* 804AE6F0  48 00 00 64 */	b lbl_804AE754
lbl_804AE6F4:
/* 804AE6F4  3B C0 00 01 */	li r30, 1
/* 804AE6F8  4B FF F4 51 */	bl aUKI_clear_spd
/* 804AE6FC  38 00 00 34 */	li r0, 0x34
/* 804AE700  7F E3 FB 78 */	mr r3, r31
/* 804AE704  B0 1F 02 62 */	sth r0, 0x262(r31)
/* 804AE708  38 9F 00 28 */	addi r4, r31, 0x28
/* 804AE70C  38 BF 02 18 */	addi r5, r31, 0x218
/* 804AE710  38 E0 00 01 */	li r7, 1
/* 804AE714  A8 DF 02 62 */	lha r6, 0x262(r31)
/* 804AE718  4B FF F4 49 */	bl aUKI_parabola_init
/* 804AE71C  38 00 00 06 */	li r0, 6
/* 804AE720  7F E3 FB 78 */	mr r3, r31
/* 804AE724  90 1F 02 38 */	stw r0, 0x238(r31)
/* 804AE728  7F A4 EB 78 */	mr r4, r29
/* 804AE72C  38 A0 00 01 */	li r5, 1
/* 804AE730  4B FF F6 8D */	bl aUKI_effect_sibuki
/* 804AE734  38 9F 00 28 */	addi r4, r31, 0x28
/* 804AE738  38 60 01 0C */	li r3, 0x10c
/* 804AE73C  48 17 F8 6D */	bl sAdo_OngenTrgStart
/* 804AE740  7F E3 FB 78 */	mr r3, r31
/* 804AE744  7F A4 EB 78 */	mr r4, r29
/* 804AE748  38 A0 00 0A */	li r5, 0xa
/* 804AE74C  38 C0 00 00 */	li r6, 0
/* 804AE750  48 00 0C 2D */	bl aUKI_set_proc
lbl_804AE754:
/* 804AE754  7F C3 F3 78 */	mr r3, r30
/* 804AE758  39 61 00 20 */	addi r11, r1, 0x20
/* 804AE75C  4B BE C7 C5 */	bl func_8009AF20
/* 804AE760  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804AE764  7C 08 03 A6 */	mtlr r0
/* 804AE768  38 21 00 20 */	addi r1, r1, 0x20
/* 804AE76C  4E 80 00 20 */	blr 
