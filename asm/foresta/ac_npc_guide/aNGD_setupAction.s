lbl_80554908:
/* 80554908  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055490C  7C 08 02 A6 */	mflr r0
/* 80554910  90 01 00 24 */	stw r0, 0x24(r1)
/* 80554914  39 61 00 20 */	addi r11, r1, 0x20
/* 80554918  4B B4 65 BD */	bl func_8009AED4
/* 8055491C  7C BF 2B 78 */	mr r31, r5
/* 80554920  7C 7D 1B 78 */	mr r29, r3
/* 80554924  3C A0 80 6A */	lis r5, process@ha /* 0x806A6380@ha */
/* 80554928  93 E3 09 94 */	stw r31, 0x994(r3)
/* 8055492C  57 E0 10 3A */	slwi r0, r31, 2
/* 80554930  7C 9E 23 78 */	mr r30, r4
/* 80554934  38 A5 63 80 */	addi r5, r5, process@l /* 0x806A6380@l */
/* 80554938  7F E4 FB 78 */	mr r4, r31
/* 8055493C  7C 05 00 2E */	lwzx r0, r5, r0
/* 80554940  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80554944  4B FF E3 79 */	bl aNGD_set_animation
/* 80554948  7F A3 EB 78 */	mr r3, r29
/* 8055494C  7F C4 F3 78 */	mr r4, r30
/* 80554950  7F E5 FB 78 */	mr r5, r31
/* 80554954  4B FF FF 81 */	bl aNGD_init_proc
/* 80554958  39 61 00 20 */	addi r11, r1, 0x20
/* 8055495C  4B B4 65 C5 */	bl func_8009AF20
/* 80554960  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80554964  7C 08 03 A6 */	mtlr r0
/* 80554968  38 21 00 20 */	addi r1, r1, 0x20
/* 8055496C  4E 80 00 20 */	blr 
