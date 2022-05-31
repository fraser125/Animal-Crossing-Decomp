lbl_805BBC74:
/* 805BBC74  3C A0 80 5C */	lis r5, aSTC_clip_change_talk_proc@ha /* 0x805BC8FC@ha */
/* 805BBC78  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BBC7C  38 05 C8 FC */	addi r0, r5, aSTC_clip_change_talk_proc@l /* 0x805BC8FC@l */
/* 805BBC80  3C 80 81 20 */	lis r4, aSTC_clip@ha /* 0x811FA220@ha */
/* 805BBC84  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805BBC88  94 04 A2 20 */	stwu r0, aSTC_clip@l(r4)  /* 0x811FA220@l */
/* 805BBC8C  3C 63 00 02 */	addis r3, r3, 2
/* 805BBC90  90 83 60 EC */	stw r4, 0x60ec(r3)
/* 805BBC94  4E 80 00 20 */	blr 
