lbl_805BA728:
/* 805BA728  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BA72C  7C 08 02 A6 */	mflr r0
/* 805BA730  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BA734  39 61 00 20 */	addi r11, r1, 0x20
/* 805BA738  4B AE 07 9D */	bl func_8009AED4
/* 805BA73C  7C 7D 1B 78 */	mr r29, r3
/* 805BA740  7C 83 23 78 */	mr r3, r4
/* 805BA744  4B E1 EE FD */	bl get_player_actor_withoutCheck
/* 805BA748  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805BA74C  7C 7F 1B 78 */	mr r31, r3
/* 805BA750  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805BA754  3B C0 00 00 */	li r30, 0
/* 805BA758  3C 63 00 02 */	addis r3, r3, 2
/* 805BA75C  80 63 60 D4 */	lwz r3, 0x60d4(r3)
/* 805BA760  80 03 00 08 */	lwz r0, 8(r3)
/* 805BA764  2C 00 00 01 */	cmpwi r0, 1
/* 805BA768  40 82 00 0C */	bne lbl_805BA774
/* 805BA76C  38 60 00 00 */	li r3, 0
/* 805BA770  48 00 00 58 */	b lbl_805BA7C8
lbl_805BA774:
/* 805BA774  80 1D 02 C0 */	lwz r0, 0x2c0(r29)
/* 805BA778  2C 00 00 00 */	cmpwi r0, 0
/* 805BA77C  40 82 00 48 */	bne lbl_805BA7C4
/* 805BA780  4B DD DC 79 */	bl mDemo_Get_talk_actor
/* 805BA784  28 03 00 00 */	cmplwi r3, 0
/* 805BA788  40 82 00 3C */	bne lbl_805BA7C4
/* 805BA78C  28 1F 00 00 */	cmplwi r31, 0
/* 805BA790  41 82 00 34 */	beq lbl_805BA7C4
/* 805BA794  38 7D 00 28 */	addi r3, r29, 0x28
/* 805BA798  38 9F 00 28 */	addi r4, r31, 0x28
/* 805BA79C  4B E0 09 95 */	bl search_position_angleY
/* 805BA7A0  A8 9D 00 DE */	lha r4, 0xde(r29)
/* 805BA7A4  7C 60 07 34 */	extsh r0, r3
/* 805BA7A8  7C 64 00 51 */	subf. r3, r4, r0
/* 805BA7AC  7C 03 00 D0 */	neg r0, r3
/* 805BA7B0  41 80 00 08 */	blt lbl_805BA7B8
/* 805BA7B4  7C 60 1B 78 */	mr r0, r3
lbl_805BA7B8:
/* 805BA7B8  2C 00 10 00 */	cmpwi r0, 0x1000
/* 805BA7BC  40 80 00 08 */	bge lbl_805BA7C4
/* 805BA7C0  3B C0 00 01 */	li r30, 1
lbl_805BA7C4:
/* 805BA7C4  7F C3 F3 78 */	mr r3, r30
lbl_805BA7C8:
/* 805BA7C8  39 61 00 20 */	addi r11, r1, 0x20
/* 805BA7CC  4B AE 07 55 */	bl func_8009AF20
/* 805BA7D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BA7D4  7C 08 03 A6 */	mtlr r0
/* 805BA7D8  38 21 00 20 */	addi r1, r1, 0x20
/* 805BA7DC  4E 80 00 20 */	blr 
