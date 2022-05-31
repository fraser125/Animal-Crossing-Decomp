lbl_8056ED44:
/* 8056ED44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056ED48  7C 08 02 A6 */	mflr r0
/* 8056ED4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056ED50  39 61 00 20 */	addi r11, r1, 0x20
/* 8056ED54  4B B2 C1 81 */	bl func_8009AED4
/* 8056ED58  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8056ED5C  7C 7E 1B 78 */	mr r30, r3
/* 8056ED60  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8056ED64  7C 9D 23 78 */	mr r29, r4
/* 8056ED68  3F E5 00 02 */	addis r31, r5, 2
/* 8056ED6C  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 8056ED70  81 85 00 E4 */	lwz r12, 0xe4(r5)
/* 8056ED74  7D 89 03 A6 */	mtctr r12
/* 8056ED78  4E 80 04 21 */	bctrl 
/* 8056ED7C  7F C3 F3 78 */	mr r3, r30
/* 8056ED80  4B FF EF 85 */	bl func_8056DD04
/* 8056ED84  7F C3 F3 78 */	mr r3, r30
/* 8056ED88  7F A4 EB 78 */	mr r4, r29
/* 8056ED8C  4B FF F0 DD */	bl aPMAN_talk_check
/* 8056ED90  81 9E 09 94 */	lwz r12, 0x994(r30)
/* 8056ED94  7F C3 F3 78 */	mr r3, r30
/* 8056ED98  7F A4 EB 78 */	mr r4, r29
/* 8056ED9C  7D 89 03 A6 */	mtctr r12
/* 8056EDA0  4E 80 04 21 */	bctrl 
/* 8056EDA4  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 8056EDA8  7F C3 F3 78 */	mr r3, r30
/* 8056EDAC  7F A4 EB 78 */	mr r4, r29
/* 8056EDB0  81 85 00 E8 */	lwz r12, 0xe8(r5)
/* 8056EDB4  7D 89 03 A6 */	mtctr r12
/* 8056EDB8  4E 80 04 21 */	bctrl 
/* 8056EDBC  7F C3 F3 78 */	mr r3, r30
/* 8056EDC0  4B FF F1 D9 */	bl aPMAN_talk_request
/* 8056EDC4  7F C3 F3 78 */	mr r3, r30
/* 8056EDC8  7F A4 EB 78 */	mr r4, r29
/* 8056EDCC  4B FF EF B9 */	bl aPMAN_check_culling
/* 8056EDD0  39 61 00 20 */	addi r11, r1, 0x20
/* 8056EDD4  4B B2 C1 4D */	bl func_8009AF20
/* 8056EDD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056EDDC  7C 08 03 A6 */	mtlr r0
/* 8056EDE0  38 21 00 20 */	addi r1, r1, 0x20
/* 8056EDE4  4E 80 00 20 */	blr 
