lbl_8058D760:
/* 8058D760  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058D764  7C 08 02 A6 */	mflr r0
/* 8058D768  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058D76C  39 61 00 20 */	addi r11, r1, 0x20
/* 8058D770  4B B0 D7 65 */	bl func_8009AED4
/* 8058D774  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8058D778  7C 7D 1B 78 */	mr r29, r3
/* 8058D77C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8058D780  7C 9E 23 78 */	mr r30, r4
/* 8058D784  3F E5 00 02 */	addis r31, r5, 2
/* 8058D788  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 8058D78C  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 8058D790  7D 89 03 A6 */	mtctr r12
/* 8058D794  4E 80 04 21 */	bctrl 
/* 8058D798  2C 03 00 01 */	cmpwi r3, 1
/* 8058D79C  40 82 00 30 */	bne lbl_8058D7CC
/* 8058D7A0  3C 60 80 59 */	lis r3, aTM0_schedule_proc@ha /* 0x8058DC6C@ha */
/* 8058D7A4  3C 80 80 6C */	lis r4, ct_data@ha /* 0x806C23EC@ha */
/* 8058D7A8  38 03 DC 6C */	addi r0, r3, aTM0_schedule_proc@l /* 0x8058DC6C@l */
/* 8058D7AC  90 1D 07 F0 */	stw r0, 0x7f0(r29)
/* 8058D7B0  38 A4 23 EC */	addi r5, r4, ct_data@l /* 0x806C23EC@l */
/* 8058D7B4  7F A3 EB 78 */	mr r3, r29
/* 8058D7B8  7F C4 F3 78 */	mr r4, r30
/* 8058D7BC  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 8058D7C0  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 8058D7C4  7D 89 03 A6 */	mtctr r12
/* 8058D7C8  4E 80 04 21 */	bctrl 
lbl_8058D7CC:
/* 8058D7CC  39 61 00 20 */	addi r11, r1, 0x20
/* 8058D7D0  4B B0 D7 51 */	bl func_8009AF20
/* 8058D7D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058D7D8  7C 08 03 A6 */	mtlr r0
/* 8058D7DC  38 21 00 20 */	addi r1, r1, 0x20
/* 8058D7E0  4E 80 00 20 */	blr 
