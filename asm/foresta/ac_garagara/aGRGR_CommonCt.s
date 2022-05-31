lbl_80424C20:
/* 80424C20  3C 80 80 42 */	lis r4, aGaragara_GaragaraAnimeStart@ha /* 0x80424B48@ha */
/* 80424C24  3C A0 80 42 */	lis r5, aGaragara_DeleteBall@ha /* 0x80424BBC@ha */
/* 80424C28  38 04 4B 48 */	addi r0, r4, aGaragara_GaragaraAnimeStart@l /* 0x80424B48@l */
/* 80424C2C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80424C30  90 03 03 9C */	stw r0, 0x39c(r3)
/* 80424C34  38 A5 4B BC */	addi r5, r5, aGaragara_DeleteBall@l /* 0x80424BBC@l */
/* 80424C38  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80424C3C  38 03 03 98 */	addi r0, r3, 0x398
/* 80424C40  90 A3 03 A0 */	stw r5, 0x3a0(r3)
/* 80424C44  3C 84 00 02 */	addis r4, r4, 2
/* 80424C48  90 63 03 98 */	stw r3, 0x398(r3)
/* 80424C4C  90 04 60 CC */	stw r0, 0x60cc(r4)
/* 80424C50  4E 80 00 20 */	blr 
