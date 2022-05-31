lbl_805D1118:
/* 805D1118  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D111C  7C 08 02 A6 */	mflr r0
/* 805D1120  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D1124  39 61 00 20 */	addi r11, r1, 0x20
/* 805D1128  4B AC 9D AD */	bl func_8009AED4
/* 805D112C  7C 7D 1B 78 */	mr r29, r3
/* 805D1130  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805D1134  80 9F 09 E8 */	lwz r4, 0x9e8(r31)
/* 805D1138  28 04 00 00 */	cmplwi r4, 0
/* 805D113C  40 82 00 58 */	bne lbl_805D1194
/* 805D1140  3C 60 81 21 */	lis r3, diary_ovl_data@ha /* 0x81210FC0@ha */
/* 805D1144  38 80 00 4C */	li r4, 0x4c
/* 805D1148  38 63 0F C0 */	addi r3, r3, diary_ovl_data@l /* 0x81210FC0@l */
/* 805D114C  38 A0 00 00 */	li r5, 0
/* 805D1150  4B DE 98 F9 */	bl mem_clear
/* 805D1154  3C 80 81 21 */	lis r4, diary_ovl_data@ha /* 0x81210FC0@ha */
/* 805D1158  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000BA20@ha */
/* 805D115C  38 04 0F C0 */	addi r0, r4, diary_ovl_data@l /* 0x81210FC0@l */
/* 805D1160  38 80 00 20 */	li r4, 0x20
/* 805D1164  90 1F 09 E8 */	stw r0, 0x9e8(r31)
/* 805D1168  38 63 BA 20 */	addi r3, r3, 0xBA20 /* 0x0000BA20@l */
/* 805D116C  4B DE B2 BD */	bl func_803BC428
/* 805D1170  80 DF 09 E8 */	lwz r6, 0x9e8(r31)
/* 805D1174  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000BA20@ha */
/* 805D1178  38 84 BA 20 */	addi r4, r4, 0xBA20 /* 0x0000BA20@l */
/* 805D117C  38 A0 00 00 */	li r5, 0
/* 805D1180  90 66 00 00 */	stw r3, 0(r6)
/* 805D1184  80 7F 09 E8 */	lwz r3, 0x9e8(r31)
/* 805D1188  80 63 00 00 */	lwz r3, 0(r3)
/* 805D118C  4B DE 98 BD */	bl mem_clear
/* 805D1190  48 00 00 24 */	b lbl_805D11B4
lbl_805D1194:
/* 805D1194  3C 60 81 21 */	lis r3, diary_ovl_data@ha /* 0x81210FC0@ha */
/* 805D1198  83 C4 00 00 */	lwz r30, 0(r4)
/* 805D119C  38 63 0F C0 */	addi r3, r3, diary_ovl_data@l /* 0x81210FC0@l */
/* 805D11A0  38 80 00 4C */	li r4, 0x4c
/* 805D11A4  38 A0 00 00 */	li r5, 0
/* 805D11A8  4B DE 98 A1 */	bl mem_clear
/* 805D11AC  80 7F 09 E8 */	lwz r3, 0x9e8(r31)
/* 805D11B0  93 C3 00 00 */	stw r30, 0(r3)
lbl_805D11B4:
/* 805D11B4  7F A3 EB 78 */	mr r3, r29
/* 805D11B8  4B FF FE 61 */	bl mDI_diary_ovl_init
/* 805D11BC  7F A3 EB 78 */	mr r3, r29
/* 805D11C0  4B FF FE 39 */	bl mDI_diary_ovl_set_proc
/* 805D11C4  39 61 00 20 */	addi r11, r1, 0x20
/* 805D11C8  4B AC 9D 59 */	bl func_8009AF20
/* 805D11CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D11D0  7C 08 03 A6 */	mtlr r0
/* 805D11D4  38 21 00 20 */	addi r1, r1, 0x20
/* 805D11D8  4E 80 00 20 */	blr 
