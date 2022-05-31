lbl_80608EC4:
/* 80608EC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80608EC8  7C 08 02 A6 */	mflr r0
/* 80608ECC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80608ED0  39 61 00 20 */	addi r11, r1, 0x20
/* 80608ED4  4B A9 1F FD */	bl func_8009AED0
/* 80608ED8  7C 7C 1B 78 */	mr r28, r3
/* 80608EDC  7C 9D 23 78 */	mr r29, r4
/* 80608EE0  7C BE 2B 78 */	mr r30, r5
/* 80608EE4  4B DB 1A B5 */	bl mEnv_NowWeather
/* 80608EE8  38 00 00 00 */	li r0, 0
/* 80608EEC  7C 7F 07 34 */	extsh r31, r3
/* 80608EF0  B0 1C 00 00 */	sth r0, 0(r28)
/* 80608EF4  7F 83 E3 78 */	mr r3, r28
/* 80608EF8  7F A4 EB 78 */	mr r4, r29
/* 80608EFC  4B FF F8 BD */	bl eDashAsimoto_Hanabira_Make
/* 80608F00  A8 BE 00 00 */	lha r5, 0(r30)
/* 80608F04  3C 80 80 6D */	lis r4, asimoto_func_table@ha /* 0x806D209C@ha */
/* 80608F08  57 E0 10 3A */	slwi r0, r31, 2
/* 80608F0C  7F 83 E3 78 */	mr r3, r28
/* 80608F10  B0 BC 00 4C */	sth r5, 0x4c(r28)
/* 80608F14  38 A4 20 9C */	addi r5, r4, asimoto_func_table@l /* 0x806D209C@l */
/* 80608F18  7F A4 EB 78 */	mr r4, r29
/* 80608F1C  7D 85 00 2E */	lwzx r12, r5, r0
/* 80608F20  7D 89 03 A6 */	mtctr r12
/* 80608F24  4E 80 04 21 */	bctrl 
/* 80608F28  39 61 00 20 */	addi r11, r1, 0x20
/* 80608F2C  4B A9 1F F1 */	bl func_8009AF1C
/* 80608F30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80608F34  7C 08 03 A6 */	mtlr r0
/* 80608F38  38 21 00 20 */	addi r1, r1, 0x20
/* 80608F3C  4E 80 00 20 */	blr 
