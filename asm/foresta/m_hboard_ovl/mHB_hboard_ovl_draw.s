lbl_805E1164:
/* 805E1164  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805E1168  7C 08 02 A6 */	mflr r0
/* 805E116C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E1170  39 61 00 20 */	addi r11, r1, 0x20
/* 805E1174  4B AB 9D 5D */	bl func_8009AED0
/* 805E1178  7C 7C 1B 78 */	mr r28, r3
/* 805E117C  7C 9D 23 78 */	mr r29, r4
/* 805E1180  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805E1184  83 E4 00 00 */	lwz r31, 0(r4)
/* 805E1188  3B C5 00 E4 */	addi r30, r5, 0xe4
/* 805E118C  81 85 00 F4 */	lwz r12, 0xf4(r5)
/* 805E1190  7D 89 03 A6 */	mtctr r12
/* 805E1194  4E 80 04 21 */	bctrl 
/* 805E1198  7F 83 E3 78 */	mr r3, r28
/* 805E119C  7F E4 FB 78 */	mr r4, r31
/* 805E11A0  7F A5 EB 78 */	mr r5, r29
/* 805E11A4  7F C6 F3 78 */	mr r6, r30
/* 805E11A8  4B FF FE DD */	bl mHB_set_dl
/* 805E11AC  39 61 00 20 */	addi r11, r1, 0x20
/* 805E11B0  4B AB 9D 6D */	bl func_8009AF1C
/* 805E11B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E11B8  7C 08 03 A6 */	mtlr r0
/* 805E11BC  38 21 00 20 */	addi r1, r1, 0x20
/* 805E11C0  4E 80 00 20 */	blr 
