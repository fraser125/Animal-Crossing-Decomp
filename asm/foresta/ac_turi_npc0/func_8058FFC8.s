lbl_8058FFC8:
/* 8058FFC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058FFCC  7C 08 02 A6 */	mflr r0
/* 8058FFD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058FFD4  39 61 00 20 */	addi r11, r1, 0x20
/* 8058FFD8  4B B0 AE FD */	bl func_8009AED4
/* 8058FFDC  3C A0 81 1F */	lis r5, data_811ED3E8@ha /* 0x811ED3E8@ha */
/* 8058FFE0  7C 7F 1B 78 */	mr r31, r3
/* 8058FFE4  80 05 D3 E8 */	lwz r0, data_811ED3E8@l(r5)  /* 0x811ED3E8@l */
/* 8058FFE8  7C 9D 23 78 */	mr r29, r4
/* 8058FFEC  2C 00 00 00 */	cmpwi r0, 0
/* 8058FFF0  40 82 00 28 */	bne lbl_80590018
/* 8058FFF4  38 60 00 00 */	li r3, 0
/* 8058FFF8  3C 80 81 1F */	lis r4, turiActorx@ha /* 0x811ED3EC@ha */
/* 8058FFFC  38 00 00 05 */	li r0, 5
/* 80590000  7C 65 1B 78 */	mr r5, r3
/* 80590004  38 84 D3 EC */	addi r4, r4, turiActorx@l /* 0x811ED3EC@l */
/* 80590008  7C 09 03 A6 */	mtctr r0
lbl_8059000C:
/* 8059000C  7C A4 19 2E */	stwx r5, r4, r3
/* 80590010  38 63 00 04 */	addi r3, r3, 4
/* 80590014  42 00 FF F8 */	bdnz lbl_8059000C
lbl_80590018:
/* 80590018  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8059001C  7F E3 FB 78 */	mr r3, r31
/* 80590020  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80590024  7F A4 EB 78 */	mr r4, r29
/* 80590028  3F C5 00 02 */	addis r30, r5, 2
/* 8059002C  80 BE 60 4C */	lwz r5, 0x604c(r30)
/* 80590030  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 80590034  7D 89 03 A6 */	mtctr r12
/* 80590038  4E 80 04 21 */	bctrl 
/* 8059003C  2C 03 00 01 */	cmpwi r3, 1
/* 80590040  40 82 00 60 */	bne lbl_805900A0
/* 80590044  3C 60 80 59 */	lis r3, aTR0_schedule_proc@ha /* 0x805906B0@ha */
/* 80590048  3C 80 80 6C */	lis r4, ct_data@ha /* 0x806C270C@ha */
/* 8059004C  38 03 06 B0 */	addi r0, r3, aTR0_schedule_proc@l /* 0x805906B0@l */
/* 80590050  90 1F 07 F0 */	stw r0, 0x7f0(r31)
/* 80590054  38 A4 27 0C */	addi r5, r4, ct_data@l /* 0x806C270C@l */
/* 80590058  7F E3 FB 78 */	mr r3, r31
/* 8059005C  7F A4 EB 78 */	mr r4, r29
/* 80590060  80 DE 60 4C */	lwz r6, 0x604c(r30)
/* 80590064  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 80590068  7D 89 03 A6 */	mtctr r12
/* 8059006C  4E 80 04 21 */	bctrl 
/* 80590070  A0 DF 00 06 */	lhz r6, 6(r31)
/* 80590074  3C 60 81 1F */	lis r3, data_811ED3E8@ha /* 0x811ED3E8@ha */
/* 80590078  38 83 D3 E8 */	addi r4, r3, data_811ED3E8@l /* 0x811ED3E8@l */
/* 8059007C  3C A0 81 1F */	lis r5, turiActorx@ha /* 0x811ED3EC@ha */
/* 80590080  3C C6 FF FF */	addis r6, r6, 0xffff
/* 80590084  80 64 00 00 */	lwz r3, 0(r4)
/* 80590088  38 06 2F B7 */	addi r0, r6, 0x2fb7
/* 8059008C  38 A5 D3 EC */	addi r5, r5, turiActorx@l /* 0x811ED3EC@l */
/* 80590090  54 06 10 3A */	slwi r6, r0, 2
/* 80590094  38 03 00 01 */	addi r0, r3, 1
/* 80590098  7F E5 31 2E */	stwx r31, r5, r6
/* 8059009C  90 04 00 00 */	stw r0, 0(r4)
lbl_805900A0:
/* 805900A0  39 61 00 20 */	addi r11, r1, 0x20
/* 805900A4  4B B0 AE 7D */	bl func_8009AF20
/* 805900A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805900AC  7C 08 03 A6 */	mtlr r0
/* 805900B0  38 21 00 20 */	addi r1, r1, 0x20
/* 805900B4  4E 80 00 20 */	blr 
