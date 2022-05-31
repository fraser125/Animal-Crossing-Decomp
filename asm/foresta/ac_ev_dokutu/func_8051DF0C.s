lbl_8051DF0C:
/* 8051DF0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051DF10  7C 08 02 A6 */	mflr r0
/* 8051DF14  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051DF18  39 61 00 20 */	addi r11, r1, 0x20
/* 8051DF1C  4B B7 CF B9 */	bl func_8009AED4
/* 8051DF20  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8051DF24  7C 7D 1B 78 */	mr r29, r3
/* 8051DF28  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8051DF2C  7C 9E 23 78 */	mr r30, r4
/* 8051DF30  3F E5 00 02 */	addis r31, r5, 2
/* 8051DF34  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 8051DF38  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 8051DF3C  7D 89 03 A6 */	mtctr r12
/* 8051DF40  4E 80 04 21 */	bctrl 
/* 8051DF44  2C 03 00 01 */	cmpwi r3, 1
/* 8051DF48  40 82 00 24 */	bne lbl_8051DF6C
/* 8051DF4C  80 9F 60 4C */	lwz r4, 0x604c(r31)
/* 8051DF50  3C 60 80 6A */	lis r3, ct_data@ha /* 0x806A04EC@ha */
/* 8051DF54  38 A3 04 EC */	addi r5, r3, ct_data@l /* 0x806A04EC@l */
/* 8051DF58  81 84 00 D0 */	lwz r12, 0xd0(r4)
/* 8051DF5C  7F A3 EB 78 */	mr r3, r29
/* 8051DF60  7F C4 F3 78 */	mr r4, r30
/* 8051DF64  7D 89 03 A6 */	mtctr r12
/* 8051DF68  4E 80 04 21 */	bctrl 
lbl_8051DF6C:
/* 8051DF6C  39 61 00 20 */	addi r11, r1, 0x20
/* 8051DF70  4B B7 CF B1 */	bl func_8009AF20
/* 8051DF74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051DF78  7C 08 03 A6 */	mtlr r0
/* 8051DF7C  38 21 00 20 */	addi r1, r1, 0x20
/* 8051DF80  4E 80 00 20 */	blr 
