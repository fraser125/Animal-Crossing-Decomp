lbl_80523D58:
/* 80523D58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80523D5C  7C 08 02 A6 */	mflr r0
/* 80523D60  90 01 00 24 */	stw r0, 0x24(r1)
/* 80523D64  39 61 00 20 */	addi r11, r1, 0x20
/* 80523D68  4B B7 71 69 */	bl func_8009AED0
/* 80523D6C  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80523D70  7C 7F 1B 78 */	mr r31, r3
/* 80523D74  83 A3 09 A8 */	lwz r29, 0x9a8(r3)
/* 80523D78  83 C4 52 F0 */	lwz r30, data_811C52F0@l(r4)  /* 0x811C52F0@l */
/* 80523D7C  83 9F 09 AC */	lwz r28, 0x9ac(r31)
/* 80523D80  7F A3 EB 78 */	mr r3, r29
/* 80523D84  4B EB C2 C1 */	bl mPr_NullCheckPersonalID
/* 80523D88  2C 03 00 00 */	cmpwi r3, 0
/* 80523D8C  40 82 00 18 */	bne lbl_80523DA4
/* 80523D90  7F E3 FB 78 */	mr r3, r31
/* 80523D94  7F A4 EB 78 */	mr r4, r29
/* 80523D98  7F 85 E3 78 */	mr r5, r28
/* 80523D9C  4B FF FF 49 */	bl aESNT_after_talk_decide_talk_data_idx
/* 80523DA0  48 00 00 18 */	b lbl_80523DB8
lbl_80523DA4:
/* 80523DA4  7F E3 FB 78 */	mr r3, r31
/* 80523DA8  7F C4 F3 78 */	mr r4, r30
/* 80523DAC  7F A5 EB 78 */	mr r5, r29
/* 80523DB0  7F 86 E3 78 */	mr r6, r28
/* 80523DB4  4B FF FC E1 */	bl aESNT_before_talk_decide_talk_data_idx
lbl_80523DB8:
/* 80523DB8  3C 80 80 6A */	lis r4, talk_data@ha /* 0x806A0B78@ha */
/* 80523DBC  54 63 18 38 */	slwi r3, r3, 3
/* 80523DC0  38 04 0B 78 */	addi r0, r4, talk_data@l /* 0x806A0B78@l */
/* 80523DC4  7C 00 1A 14 */	add r0, r0, r3
/* 80523DC8  90 1F 09 A4 */	stw r0, 0x9a4(r31)
/* 80523DCC  39 61 00 20 */	addi r11, r1, 0x20
/* 80523DD0  4B B7 71 4D */	bl func_8009AF1C
/* 80523DD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80523DD8  7C 08 03 A6 */	mtlr r0
/* 80523DDC  38 21 00 20 */	addi r1, r1, 0x20
/* 80523DE0  4E 80 00 20 */	blr 
