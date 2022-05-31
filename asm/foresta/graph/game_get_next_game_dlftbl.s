lbl_804055D4:
/* 804055D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804055D8  7C 08 02 A6 */	mflr r0
/* 804055DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804055E0  4B FF FC 55 */	bl game_get_next_game_init
/* 804055E4  3C 80 80 63 */	lis r4, first_game_init@ha /* 0x80629C20@ha */
/* 804055E8  38 04 9C 20 */	addi r0, r4, first_game_init@l /* 0x80629C20@l */
/* 804055EC  7C 03 00 40 */	cmplw r3, r0
/* 804055F0  40 82 00 10 */	bne lbl_80405600
/* 804055F4  3C 60 80 65 */	lis r3, data_806543D0@ha /* 0x806543D0@ha */
/* 804055F8  38 63 43 D0 */	addi r3, r3, data_806543D0@l /* 0x806543D0@l */
/* 804055FC  48 00 01 08 */	b lbl_80405704
lbl_80405600:
/* 80405600  3C 80 80 63 */	lis r4, select_init@ha /* 0x80629AA8@ha */
/* 80405604  38 04 9A A8 */	addi r0, r4, select_init@l /* 0x80629AA8@l */
/* 80405608  7C 03 00 40 */	cmplw r3, r0
/* 8040560C  40 82 00 14 */	bne lbl_80405620
/* 80405610  3C 60 80 65 */	lis r3, data_806543D0@ha /* 0x806543D0@ha */
/* 80405614  38 63 43 D0 */	addi r3, r3, data_806543D0@l /* 0x806543D0@l */
/* 80405618  38 63 00 30 */	addi r3, r3, 0x30
/* 8040561C  48 00 00 E8 */	b lbl_80405704
lbl_80405620:
/* 80405620  3C 80 80 63 */	lis r4, play_init@ha /* 0x8062A5C4@ha */
/* 80405624  38 04 A5 C4 */	addi r0, r4, play_init@l /* 0x8062A5C4@l */
/* 80405628  7C 03 00 40 */	cmplw r3, r0
/* 8040562C  40 82 00 14 */	bne lbl_80405640
/* 80405630  3C 60 80 65 */	lis r3, data_806543D0@ha /* 0x806543D0@ha */
/* 80405634  38 63 43 D0 */	addi r3, r3, data_806543D0@l /* 0x806543D0@l */
/* 80405638  38 63 00 60 */	addi r3, r3, 0x60
/* 8040563C  48 00 00 C8 */	b lbl_80405704
lbl_80405640:
/* 80405640  3C 80 80 63 */	lis r4, second_game_init@ha /* 0x8062B644@ha */
/* 80405644  38 04 B6 44 */	addi r0, r4, second_game_init@l /* 0x8062B644@l */
/* 80405648  7C 03 00 40 */	cmplw r3, r0
/* 8040564C  40 82 00 14 */	bne lbl_80405660
/* 80405650  3C 60 80 65 */	lis r3, data_806543D0@ha /* 0x806543D0@ha */
/* 80405654  38 63 43 D0 */	addi r3, r3, data_806543D0@l /* 0x806543D0@l */
/* 80405658  38 63 00 90 */	addi r3, r3, 0x90
/* 8040565C  48 00 00 A8 */	b lbl_80405704
lbl_80405660:
/* 80405660  3C 80 80 63 */	lis r4, trademark_init@ha /* 0x8062BDF0@ha */
/* 80405664  38 04 BD F0 */	addi r0, r4, trademark_init@l /* 0x8062BDF0@l */
/* 80405668  7C 03 00 40 */	cmplw r3, r0
/* 8040566C  40 82 00 14 */	bne lbl_80405680
/* 80405670  3C 60 80 65 */	lis r3, data_806543D0@ha /* 0x806543D0@ha */
/* 80405674  38 63 43 D0 */	addi r3, r3, data_806543D0@l /* 0x806543D0@l */
/* 80405678  38 63 00 F0 */	addi r3, r3, 0xf0
/* 8040567C  48 00 00 88 */	b lbl_80405704
lbl_80405680:
/* 80405680  3C 80 80 63 */	lis r4, player_select_init@ha /* 0x8062C6DC@ha */
/* 80405684  38 04 C6 DC */	addi r0, r4, player_select_init@l /* 0x8062C6DC@l */
/* 80405688  7C 03 00 40 */	cmplw r3, r0
/* 8040568C  40 82 00 14 */	bne lbl_804056A0
/* 80405690  3C 60 80 65 */	lis r3, data_806543D0@ha /* 0x806543D0@ha */
/* 80405694  38 63 43 D0 */	addi r3, r3, data_806543D0@l /* 0x806543D0@l */
/* 80405698  38 63 01 20 */	addi r3, r3, 0x120
/* 8040569C  48 00 00 68 */	b lbl_80405704
lbl_804056A0:
/* 804056A0  3C 80 80 63 */	lis r4, save_menu_init@ha /* 0x8062D214@ha */
/* 804056A4  38 04 D2 14 */	addi r0, r4, save_menu_init@l /* 0x8062D214@l */
/* 804056A8  7C 03 00 40 */	cmplw r3, r0
/* 804056AC  40 82 00 14 */	bne lbl_804056C0
/* 804056B0  3C 60 80 65 */	lis r3, data_806543D0@ha /* 0x806543D0@ha */
/* 804056B4  38 63 43 D0 */	addi r3, r3, data_806543D0@l /* 0x806543D0@l */
/* 804056B8  38 63 01 50 */	addi r3, r3, 0x150
/* 804056BC  48 00 00 48 */	b lbl_80405704
lbl_804056C0:
/* 804056C0  3C 80 80 63 */	lis r4, famicom_emu_init@ha /* 0x8062D564@ha */
/* 804056C4  38 04 D5 64 */	addi r0, r4, famicom_emu_init@l /* 0x8062D564@l */
/* 804056C8  7C 03 00 40 */	cmplw r3, r0
/* 804056CC  40 82 00 14 */	bne lbl_804056E0
/* 804056D0  3C 60 80 65 */	lis r3, data_806543D0@ha /* 0x806543D0@ha */
/* 804056D4  38 63 43 D0 */	addi r3, r3, data_806543D0@l /* 0x806543D0@l */
/* 804056D8  38 63 01 80 */	addi r3, r3, 0x180
/* 804056DC  48 00 00 28 */	b lbl_80405704
lbl_804056E0:
/* 804056E0  3C 80 80 63 */	lis r4, prenmi_init@ha /* 0x8062DAD8@ha */
/* 804056E4  38 A0 00 00 */	li r5, 0
/* 804056E8  38 04 DA D8 */	addi r0, r4, prenmi_init@l /* 0x8062DAD8@l */
/* 804056EC  7C 03 00 40 */	cmplw r3, r0
/* 804056F0  40 82 00 10 */	bne lbl_80405700
/* 804056F4  3C 60 80 65 */	lis r3, data_806543D0@ha /* 0x806543D0@ha */
/* 804056F8  38 63 43 D0 */	addi r3, r3, data_806543D0@l /* 0x806543D0@l */
/* 804056FC  38 A3 01 B0 */	addi r5, r3, 0x1b0
lbl_80405700:
/* 80405700  7C A3 2B 78 */	mr r3, r5
lbl_80405704:
/* 80405704  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80405708  7C 08 03 A6 */	mtlr r0
/* 8040570C  38 21 00 10 */	addi r1, r1, 0x10
/* 80405710  4E 80 00 20 */	blr 
