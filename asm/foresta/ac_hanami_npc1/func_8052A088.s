lbl_8052A088:
/* 8052A088  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052A08C  7C 08 02 A6 */	mflr r0
/* 8052A090  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052A094  39 61 00 20 */	addi r11, r1, 0x20
/* 8052A098  4B B7 0E 3D */	bl func_8009AED4
/* 8052A09C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8052A0A0  7C 7D 1B 78 */	mr r29, r3
/* 8052A0A4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8052A0A8  7C 9E 23 78 */	mr r30, r4
/* 8052A0AC  3F E5 00 02 */	addis r31, r5, 2
/* 8052A0B0  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 8052A0B4  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 8052A0B8  7D 89 03 A6 */	mtctr r12
/* 8052A0BC  4E 80 04 21 */	bctrl 
/* 8052A0C0  2C 03 00 01 */	cmpwi r3, 1
/* 8052A0C4  40 82 00 30 */	bne lbl_8052A0F4
/* 8052A0C8  3C 60 80 53 */	lis r3, aHM1_schedule_proc@ha /* 0x8052A940@ha */
/* 8052A0CC  3C 80 80 6A */	lis r4, ct_data@ha /* 0x806A124C@ha */
/* 8052A0D0  38 03 A9 40 */	addi r0, r3, aHM1_schedule_proc@l /* 0x8052A940@l */
/* 8052A0D4  90 1D 07 F0 */	stw r0, 0x7f0(r29)
/* 8052A0D8  38 A4 12 4C */	addi r5, r4, ct_data@l /* 0x806A124C@l */
/* 8052A0DC  7F A3 EB 78 */	mr r3, r29
/* 8052A0E0  7F C4 F3 78 */	mr r4, r30
/* 8052A0E4  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 8052A0E8  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 8052A0EC  7D 89 03 A6 */	mtctr r12
/* 8052A0F0  4E 80 04 21 */	bctrl 
lbl_8052A0F4:
/* 8052A0F4  39 61 00 20 */	addi r11, r1, 0x20
/* 8052A0F8  4B B7 0E 29 */	bl func_8009AF20
/* 8052A0FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052A100  7C 08 03 A6 */	mtlr r0
/* 8052A104  38 21 00 20 */	addi r1, r1, 0x20
/* 8052A108  4E 80 00 20 */	blr 
