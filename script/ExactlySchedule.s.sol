// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >=0.8.19;

import { ISablierV2LockupDynamic } from "@sablier/v2-core/src/interfaces/ISablierV2LockupDynamic.sol";
import { Broker, LockupDynamic } from "@sablier/v2-core/src/types/DataTypes.sol";
import { ud2x18, ud60x18 } from "@sablier/v2-core/src/types/Math.sol";
import { IERC20 } from "@sablier/v2-core/src/types/Tokens.sol";
import { BaseScript } from "@sablier/v2-core-script/Base.s.sol";
import { ISablierV2Batch } from "@sablier/v2-periphery/src/interfaces/ISablierV2Batch.sol";
import { Batch } from "@sablier/v2-periphery/src/types/DataTypes.sol";

contract ExactlyProtocolScript is BaseScript {
    IERC20 public constant EXA = IERC20(0x1e925De1c68ef83bD98eE3E130eF14a50309C01B);
    uint128 public constant AGGREGATE_AMOUNT = 491_300e18;

    // Check the addresses in the docs: https://docs.sablier.com/contracts/v2/deployments
    ISablierV2LockupDynamic public constant SABLIER_LOCKUP_DYNAMIC =
        ISablierV2LockupDynamic(0x6f68516c21E248cdDfaf4898e66b2b0Adee0e0d6);

    ISablierV2Batch public batch;

    Broker public broker = Broker({ account: address(0), fee: ud60x18(0) });

    // TODO: implement function run

    function getSegment(uint128 amount, uint40 milestone) public pure returns (LockupDynamic.Segment memory) {
        LockupDynamic.Segment memory segment =
            LockupDynamic.Segment({ amount: amount, milestone: milestone, exponent: ud2x18(1) });
        return segment;
    }

    function getParamsForUser1() public view returns (LockupDynamic.CreateWithMilestones memory) {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: false,
            recipient: 0xA4F5f3848142116fe061e7255C133003a41ABce8,
            segments: getSegmentsForUser1(),
            sender: address(this),
            startTime: 1_704_060_000,
            totalAmount: 202_086e18
        });
    }

    function getParamsForUser2() public view returns (LockupDynamic.CreateWithMilestones memory) {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: false,
            recipient: 0xE72185a9f4Ce3500d6dC7CCDCfC64cf66D823bE8,
            segments: getSegmentsForUser2(),
            sender: address(this),
            startTime: 1_704_060_000,
            totalAmount: 150_587e18
        });
    }

    function getParamsForUser3() public view returns (LockupDynamic.CreateWithMilestones memory) {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: false,
            recipient: 0xE72185a9f4Ce3500d6dC7CCDCfC64cf66D823bE8,
            segments: getSegmentsForUser3(),
            sender: address(this),
            startTime: 1_716_411_600,
            totalAmount: 34_224e18
        });
    }

    function getParamsForUser4() public view returns (LockupDynamic.CreateWithMilestones memory) {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: false,
            recipient: 0xcd25c40dCfB47f6eE3112734393D25c9e21A3AA7,
            segments: getSegmentsForUser4(),
            sender: address(this),
            startTime: 1_704_060_000,
            totalAmount: 18_905e18
        });
    }

    function getParamsForUser5() public view returns (LockupDynamic.CreateWithMilestones memory) {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: false,
            recipient: 0xcd25c40dCfB47f6eE3112734393D25c9e21A3AA7,
            segments: getSegmentsForUser5(),
            sender: address(this),
            startTime: 1_716_411_600,
            totalAmount: 6193e18
        });
    }

    function getParamsForUser6() public view returns (LockupDynamic.CreateWithMilestones memory) {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: false,
            recipient: 0x652afcD1EB1A90A622dC4033eE7630BdD3ad3E51,
            segments: getSegmentsForUser6(),
            sender: address(this),
            startTime: 1_704_060_000,
            totalAmount: 37_484e18
        });
    }

    function getParamsForUser7() public view returns (LockupDynamic.CreateWithMilestones memory) {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: false,
            recipient: 0xCa81a029aCa50Fa3e25Ea2f26E10152d903fB4B5,
            segments: getSegmentsForUser7(),
            sender: address(this),
            startTime: 1_704_060_000,
            totalAmount: 25_098e18
        });
    }

    function getParamsForUser8() public view returns (LockupDynamic.CreateWithMilestones memory) {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: false,
            recipient: 0xF891855Ddb613A9D56b6EAeA7495950B374181e2,
            segments: getSegmentsForUser8(),
            sender: address(this),
            startTime: 1_704_060_000,
            totalAmount: 33_572e18
        });
    }

    function getParamsForUser9() public view returns (LockupDynamic.CreateWithMilestones memory) {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: false,
            recipient: 0x7d5Ff8caE8eF8d15357Cfd4A291E830C0F875F1B,
            segments: getSegmentsForUser9(),
            sender: address(this),
            startTime: 1_713_560_400,
            totalAmount: 9126e18
        });
    }

    function getParamsForUser10() public view returns (LockupDynamic.CreateWithMilestones memory) {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: false,
            recipient: 0x3A0B303FF6B7250ddb659AdD318c8e74f3e8104d,
            segments: getSegmentsForUser10(),
            sender: address(this),
            startTime: 1_713_560_400,
            totalAmount: 4563e18
        });
    }

    function getParamsForUser11() public view returns (LockupDynamic.CreateWithMilestones memory) {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: false,
            recipient: 0x4073F392794218FA3195cce45eaaC9A77066c640,
            segments: getSegmentsForUser11(),
            sender: address(this),
            startTime: 1_704_060_000,
            totalAmount: 325_945e18
        });
    }

    function getParamsForUser12() public view returns (LockupDynamic.CreateWithMilestones memory) {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: false,
            recipient: 0xFB1E9918FBA266797e1191597b64ED6Be1EE2728,
            segments: getSegmentsForUser12(),
            sender: address(this),
            startTime: 1_704_060_000,
            totalAmount: 1_303_780e18
        });
    }

    function getParamsForUser13() public view returns (LockupDynamic.CreateWithMilestones memory) {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: false,
            recipient: 0x7b7048820FB71Db6F086c5365E2948ce39E73304,
            segments: getSegmentsForUser13(),
            sender: address(this),
            startTime: 1_704_060_000,
            totalAmount: 46_284e18
        });
    }

    function getParamsForUser14() public view returns (LockupDynamic.CreateWithMilestones memory) {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: false,
            recipient: 0xD754d49Ce331669C4f15B5e1b8E72D2d9Fc51B28,
            segments: getSegmentsForUser14(),
            sender: address(this),
            startTime: 1_704_060_000,
            totalAmount: 23_142e18
        });
    }

    function getParamsForUser15() public view returns (LockupDynamic.CreateWithMilestones memory) {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: false,
            recipient: 0xd3819BEd61861d281d45E79988f95d4371D25e2c,
            segments: getSegmentsForUser15(),
            sender: address(this),
            startTime: 1_704_060_000,
            totalAmount: 46_284e18
        });
    }

    function getParamsForUser16() public view returns (LockupDynamic.CreateWithMilestones memory) {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: false,
            recipient: 0x86C614FD180855f35160eD34552Ad4E99b8A2B52,
            segments: getSegmentsForUser16(),
            sender: address(this),
            startTime: 1_724_792_400,
            totalAmount: 10_104e18
        });
    }

    function getSegmentsForUser1() public pure returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 3039e18, milestone: 1_706_652_000 }); // January 31, 2024
        segments[1] = getSegment({ amount: 3262e18, milestone: 1_709_157_600 }); // February 29, 2024
        segments[2] = getSegment({ amount: 3508e18, milestone: 1_711_836_000 }); // March 31, 2024
        segments[3] = getSegment({ amount: 3731e18, milestone: 1_714_424_400 }); // April 30, 2024
        segments[4] = getSegment({ amount: 3981e18, milestone: 1_717_102_800 }); // May 31, 2024
        segments[5] = getSegment({ amount: 4195e18, milestone: 1_719_694_800 }); // June 30, 2024
        segments[6] = getSegment({ amount: 4453e18, milestone: 1_722_373_200 }); // July 31, 2024
        segments[7] = getSegment({ amount: 4692e18, milestone: 1_725_051_600 }); // August 31, 2024
        segments[8] = getSegment({ amount: 4895e18, milestone: 1_727_643_600 }); // September 30, 2024
        segments[9] = getSegment({ amount: 5164e18, milestone: 1_730_325_600 }); // October 31, 2024
        segments[10] = getSegment({ amount: 5360e18, milestone: 1_732_917_600 }); // November 30, 2024
        segments[11] = getSegment({ amount: 5636e18, milestone: 1_735_596_000 }); // December 31, 2024
        segments[12] = getSegment({ amount: 5875e18, milestone: 1_738_274_400 }); // January 31, 2025
        segments[13] = getSegment({ amount: 5952e18, milestone: 1_740_693_600 }); // February 28, 2025
        segments[14] = getSegment({ amount: 6339e18, milestone: 1_743_368_400 }); // March 31, 2025
        segments[15] = getSegment({ amount: 6517e18, milestone: 1_745_960_400 }); // April 30, 2025
        segments[16] = getSegment({ amount: 6812e18, milestone: 1_748_638_800 }); // May 31, 2025
        segments[17] = getSegment({ amount: 6981e18, milestone: 1_751_230_800 }); // June 30, 2025
        segments[18] = getSegment({ amount: 7285e18, milestone: 1_753_909_200 }); // July 31, 2025
        segments[19] = getSegment({ amount: 7523e18, milestone: 1_756_587_600 }); // August 31, 2025
        segments[20] = getSegment({ amount: 7681e18, milestone: 1_759_179_600 }); // September 30, 2025
        segments[21] = getSegment({ amount: 7996e18, milestone: 1_761_861_600 }); // October 31, 2025
        segments[22] = getSegment({ amount: 8145e18, milestone: 1_764_453_600 }); // November 30, 2025
        segments[23] = getSegment({ amount: 5702e18, milestone: 1_767_132_000 }); // December 31, 2025
        segments[24] = getSegment({ amount: 5614e18, milestone: 1_769_810_400 }); // January 31, 2026
        segments[25] = getSegment({ amount: 5613e18, milestone: 1_772_229_600 }); // February 28, 2026
        segments[26] = getSegment({ amount: 5614e18, milestone: 1_774_904_400 }); // March 31, 2026
        segments[27] = getSegment({ amount: 5613e18, milestone: 1_777_496_400 }); // April 30, 2026
        segments[28] = getSegment({ amount: 5614e18, milestone: 1_780_174_800 }); // May 31, 2026
        segments[29] = getSegment({ amount: 5613e18, milestone: 1_782_766_800 }); // June 30, 2026
        segments[30] = getSegment({ amount: 5614e18, milestone: 1_785_445_200 }); // July 31, 2026
        segments[31] = getSegment({ amount: 5613e18, milestone: 1_788_123_600 }); // August 31, 2026
        segments[32] = getSegment({ amount: 5614e18, milestone: 1_790_715_600 }); // September 30, 2026
        segments[33] = getSegment({ amount: 5613e18, milestone: 1_793_397_600 }); // October 31, 2026
        segments[34] = getSegment({ amount: 5614e18, milestone: 1_795_989_600 }); // November 30, 2026
        segments[35] = getSegment({ amount: 5613e18, milestone: 1_798_668_000 }); // December 31, 2026
        return segments;
    }

    function getSegmentsForUser2() public pure returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 2007e18, milestone: 1_706_652_000 }); // January 31, 2024
        segments[1] = getSegment({ amount: 2173e18, milestone: 1_709_157_600 }); // February 29, 2024
        segments[2] = getSegment({ amount: 2356e18, milestone: 1_711_836_000 }); // March 31, 2024
        segments[3] = getSegment({ amount: 2523e18, milestone: 1_714_424_400 }); // April 30, 2024
        segments[4] = getSegment({ amount: 2708e18, milestone: 1_717_102_800 }); // May 31, 2024
        segments[5] = getSegment({ amount: 2869e18, milestone: 1_719_694_800 }); // June 30, 2024
        segments[6] = getSegment({ amount: 3061e18, milestone: 1_722_373_200 }); // July 31, 2024
        segments[7] = getSegment({ amount: 3238e18, milestone: 1_725_051_600 }); // August 31, 2024
        segments[8] = getSegment({ amount: 3390e18, milestone: 1_727_643_600 }); // September 30, 2024
        segments[9] = getSegment({ amount: 3590e18, milestone: 1_730_325_600 }); // October 31, 2024
        segments[10] = getSegment({ amount: 3736e18, milestone: 1_732_917_600 }); // November 30, 2024
        segments[11] = getSegment({ amount: 3943e18, milestone: 1_735_596_000 }); // December 31, 2024
        segments[12] = getSegment({ amount: 4120e18, milestone: 1_738_274_400 }); // January 31, 2025
        segments[13] = getSegment({ amount: 4177e18, milestone: 1_740_693_600 }); // February 28, 2025
        segments[14] = getSegment({ amount: 4466e18, milestone: 1_743_368_400 }); // March 31, 2025
        segments[15] = getSegment({ amount: 4599e18, milestone: 1_745_960_400 }); // April 30, 2025
        segments[16] = getSegment({ amount: 4818e18, milestone: 1_748_638_800 }); // May 31, 2025
        segments[17] = getSegment({ amount: 4945e18, milestone: 1_751_230_800 }); // June 30, 2025
        segments[18] = getSegment({ amount: 5170e18, milestone: 1_753_909_200 }); // July 31, 2025
        segments[19] = getSegment({ amount: 5349e18, milestone: 1_756_587_600 }); // August 31, 2025
        segments[20] = getSegment({ amount: 5465e18, milestone: 1_759_179_600 }); // September 30, 2025
        segments[21] = getSegment({ amount: 5701e18, milestone: 1_761_861_600 }); // October 31, 2025
        segments[22] = getSegment({ amount: 5812e18, milestone: 1_764_453_600 }); // November 30, 2025
        segments[23] = getSegment({ amount: 6052e18, milestone: 1_767_132_000 }); // December 31, 2025
        segments[24] = getSegment({ amount: 6230e18, milestone: 1_769_810_400 }); // January 31, 2026
        segments[25] = getSegment({ amount: 6185e18, milestone: 1_772_229_600 }); // February 28, 2026
        segments[26] = getSegment({ amount: 4257e18, milestone: 1_774_904_400 }); // March 31, 2026
        segments[27] = getSegment({ amount: 4183e18, milestone: 1_777_496_400 }); // April 30, 2026
        segments[28] = getSegment({ amount: 4183e18, milestone: 1_780_174_800 }); // May 31, 2026
        segments[29] = getSegment({ amount: 4183e18, milestone: 1_782_766_800 }); // June 30, 2026
        segments[30] = getSegment({ amount: 4183e18, milestone: 1_785_445_200 }); // July 31, 2026
        segments[31] = getSegment({ amount: 4183e18, milestone: 1_788_123_600 }); // August 31, 2026
        segments[32] = getSegment({ amount: 4183e18, milestone: 1_790_715_600 }); // September 30, 2026
        segments[33] = getSegment({ amount: 4183e18, milestone: 1_793_397_600 }); // October 31, 2026
        segments[34] = getSegment({ amount: 4183e18, milestone: 1_795_989_600 }); // November 30, 2026
        segments[35] = getSegment({ amount: 4183e18, milestone: 1_798_668_000 }); // December 31, 2026
        return segments;
    }

    function getSegmentsForUser3() public pure returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 237e18, milestone: 1_717_102_800 }); // May 31, 2024
        segments[1] = getSegment({ amount: 275e18, milestone: 1_719_694_800 }); // June 30, 2024
        segments[2] = getSegment({ amount: 314e18, milestone: 1_722_373_200 }); // July 31, 2024
        segments[3] = getSegment({ amount: 354e18, milestone: 1_725_051_600 }); // August 31, 2024
        segments[4] = getSegment({ amount: 390e18, milestone: 1_727_643_600 }); // September 30, 2024
        segments[5] = getSegment({ amount: 432e18, milestone: 1_730_325_600 }); // October 31, 2024
        segments[6] = getSegment({ amount: 467e18, milestone: 1_732_917_600 }); // November 30, 2024
        segments[7] = getSegment({ amount: 509e18, milestone: 1_735_596_000 }); // December 31, 2024
        segments[8] = getSegment({ amount: 549e18, milestone: 1_738_274_400 }); // January 31, 2025
        segments[9] = getSegment({ amount: 569e18, milestone: 1_740_693_600 }); // February 28, 2025
        segments[10] = getSegment({ amount: 626e18, milestone: 1_743_368_400 }); // March 31, 2025
        segments[11] = getSegment({ amount: 657e18, milestone: 1_745_960_400 }); // April 30, 2025
        segments[12] = getSegment({ amount: 703e18, milestone: 1_748_638_800 }); // May 31, 2025
        segments[13] = getSegment({ amount: 734e18, milestone: 1_751_230_800 }); // June 30, 2025
        segments[14] = getSegment({ amount: 781e18, milestone: 1_753_909_200 }); // July 31, 2025
        segments[15] = getSegment({ amount: 821e18, milestone: 1_756_587_600 }); // August 31, 2025
        segments[16] = getSegment({ amount: 849e18, milestone: 1_759_179_600 }); // September 30, 2025
        segments[17] = getSegment({ amount: 898e18, milestone: 1_761_861_600 }); // October 31, 2025
        segments[18] = getSegment({ amount: 926e18, milestone: 1_764_453_600 }); // November 30, 2025
        segments[19] = getSegment({ amount: 976e18, milestone: 1_767_132_000 }); // December 31, 2025
        segments[20] = getSegment({ amount: 1016e18, milestone: 1_769_810_400 }); // January 31, 2026
        segments[21] = getSegment({ amount: 1013e18, milestone: 1_772_229_600 }); // February 28, 2026
        segments[22] = getSegment({ amount: 1092e18, milestone: 1_774_904_400 }); // March 31, 2026
        segments[23] = getSegment({ amount: 1116e18, milestone: 1_777_496_400 }); // April 30, 2026
        segments[24] = getSegment({ amount: 1170e18, milestone: 1_780_174_800 }); // May 31, 2026
        segments[25] = getSegment({ amount: 1193e18, milestone: 1_782_766_800 }); // June 30, 2026
        segments[26] = getSegment({ amount: 1248e18, milestone: 1_785_445_200 }); // July 31, 2026
        segments[27] = getSegment({ amount: 1287e18, milestone: 1_788_123_600 }); // August 31, 2026
        segments[28] = getSegment({ amount: 1308e18, milestone: 1_790_715_600 }); // September 30, 2026
        segments[29] = getSegment({ amount: 1365e18, milestone: 1_793_397_600 }); // October 31, 2026
        segments[30] = getSegment({ amount: 1384e18, milestone: 1_795_989_600 }); // November 30, 2026
        segments[31] = getSegment({ amount: 1443e18, milestone: 1_798_668_000 }); // December 31, 2026
        segments[32] = getSegment({ amount: 1482e18, milestone: 1_801_346_400 }); // January 31, 2027
        segments[33] = getSegment({ amount: 1457e18, milestone: 1_803_765_600 }); // February 28, 2027
        segments[34] = getSegment({ amount: 1559e18, milestone: 1_806_440_400 }); // March 31, 2027
        segments[35] = getSegment({ amount: 1575e18, milestone: 1_809_032_400 }); // April 30, 2027
        segments[36] = getSegment({ amount: 1449e18, milestone: 1_811_710_800 }); // May 31, 2027
        return segments;
    }

    function getSegmentsForUser4() public pure returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 234e18, milestone: 1_706_652_000 }); // January 31, 2024
        segments[1] = getSegment({ amount: 254e18, milestone: 1_709_157_600 }); // February 29, 2024
        segments[2] = getSegment({ amount: 278e18, milestone: 1_711_836_000 }); // March 31, 2024
        segments[3] = getSegment({ amount: 298e18, milestone: 1_714_424_400 }); // April 30, 2024
        segments[4] = getSegment({ amount: 322e18, milestone: 1_717_102_800 }); // May 31, 2024
        segments[5] = getSegment({ amount: 341e18, milestone: 1_719_694_800 }); // June 30, 2024
        segments[6] = getSegment({ amount: 366e18, milestone: 1_722_373_200 }); // July 31, 2024
        segments[7] = getSegment({ amount: 389e18, milestone: 1_725_051_600 }); // August 31, 2024
        segments[8] = getSegment({ amount: 407e18, milestone: 1_727_643_600 }); // September 30, 2024
        segments[9] = getSegment({ amount: 432e18, milestone: 1_730_325_600 }); // October 31, 2024
        segments[10] = getSegment({ amount: 451e18, milestone: 1_732_917_600 }); // November 30, 2024
        segments[11] = getSegment({ amount: 477e18, milestone: 1_735_596_000 }); // December 31, 2024
        segments[12] = getSegment({ amount: 498e18, milestone: 1_738_274_400 }); // January 31, 2025
        segments[13] = getSegment({ amount: 506e18, milestone: 1_740_693_600 }); // February 28, 2025
        segments[14] = getSegment({ amount: 543e18, milestone: 1_743_368_400 }); // March 31, 2025
        segments[15] = getSegment({ amount: 559e18, milestone: 1_745_960_400 }); // April 30, 2025
        segments[16] = getSegment({ amount: 586e18, milestone: 1_748_638_800 }); // May 31, 2025
        segments[17] = getSegment({ amount: 603e18, milestone: 1_751_230_800 }); // June 30, 2025
        segments[18] = getSegment({ amount: 631e18, milestone: 1_753_909_200 }); // July 31, 2025
        segments[19] = getSegment({ amount: 653e18, milestone: 1_756_587_600 }); // August 31, 2025
        segments[20] = getSegment({ amount: 668e18, milestone: 1_759_179_600 }); // September 30, 2025
        segments[21] = getSegment({ amount: 697e18, milestone: 1_761_861_600 }); // October 31, 2025
        segments[22] = getSegment({ amount: 711e18, milestone: 1_764_453_600 }); // November 30, 2025
        segments[23] = getSegment({ amount: 742e18, milestone: 1_767_132_000 }); // December 31, 2025
        segments[24] = getSegment({ amount: 763e18, milestone: 1_769_810_400 }); // January 31, 2026
        segments[25] = getSegment({ amount: 759e18, milestone: 1_772_229_600 }); // February 28, 2026
        segments[26] = getSegment({ amount: 807e18, milestone: 1_774_904_400 }); // March 31, 2026
        segments[27] = getSegment({ amount: 729e18, milestone: 1_777_496_400 }); // April 30, 2026
        segments[28] = getSegment({ amount: 525e18, milestone: 1_780_174_800 }); // May 31, 2026
        segments[29] = getSegment({ amount: 525e18, milestone: 1_782_766_800 }); // June 30, 2026
        segments[30] = getSegment({ amount: 525e18, milestone: 1_785_445_200 }); // July 31, 2026
        segments[31] = getSegment({ amount: 525e18, milestone: 1_788_123_600 }); // August 31, 2026
        segments[32] = getSegment({ amount: 525e18, milestone: 1_790_715_600 }); // September 30, 2026
        segments[33] = getSegment({ amount: 526e18, milestone: 1_793_397_600 }); // October 31, 2026
        segments[34] = getSegment({ amount: 525e18, milestone: 1_795_989_600 }); // November 30, 2026
        segments[35] = getSegment({ amount: 525e18, milestone: 1_798_668_000 }); // December 31, 2026
        return segments;
    }

    function getSegmentsForUser5() public pure returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 43e18, milestone: 1_717_102_800 }); // May 31, 2024
        segments[1] = getSegment({ amount: 50e18, milestone: 1_719_694_800 }); // June 30, 2024
        segments[2] = getSegment({ amount: 57e18, milestone: 1_722_373_200 }); // July 31, 2024
        segments[3] = getSegment({ amount: 64e18, milestone: 1_725_051_600 }); // August 31, 2024
        segments[4] = getSegment({ amount: 70e18, milestone: 1_727_643_600 }); // September 30, 2024
        segments[5] = getSegment({ amount: 78e18, milestone: 1_730_325_600 }); // October 31, 2024
        segments[6] = getSegment({ amount: 85e18, milestone: 1_732_917_600 }); // November 30, 2024
        segments[7] = getSegment({ amount: 92e18, milestone: 1_735_596_000 }); // December 31, 2024
        segments[8] = getSegment({ amount: 99e18, milestone: 1_738_274_400 }); // January 31, 2025
        segments[9] = getSegment({ amount: 103e18, milestone: 1_740_693_600 }); // February 28, 2025
        segments[10] = getSegment({ amount: 113e18, milestone: 1_743_368_400 }); // March 31, 2025
        segments[11] = getSegment({ amount: 119e18, milestone: 1_745_960_400 }); // April 30, 2025
        segments[12] = getSegment({ amount: 128e18, milestone: 1_748_638_800 }); // May 31, 2025
        segments[13] = getSegment({ amount: 132e18, milestone: 1_751_230_800 }); // June 30, 2025
        segments[14] = getSegment({ amount: 142e18, milestone: 1_753_909_200 }); // July 31, 2025
        segments[15] = getSegment({ amount: 148e18, milestone: 1_756_587_600 }); // August 31, 2025
        segments[16] = getSegment({ amount: 154e18, milestone: 1_759_179_600 }); // September 30, 2025
        segments[17] = getSegment({ amount: 162e18, milestone: 1_761_861_600 }); // October 31, 2025
        segments[18] = getSegment({ amount: 168e18, milestone: 1_764_453_600 }); // November 30, 2025
        segments[19] = getSegment({ amount: 177e18, milestone: 1_767_132_000 }); // December 31, 2025
        segments[20] = getSegment({ amount: 183e18, milestone: 1_769_810_400 }); // January 31, 2026
        segments[21] = getSegment({ amount: 184e18, milestone: 1_772_229_600 }); // February 28, 2026
        segments[22] = getSegment({ amount: 197e18, milestone: 1_774_904_400 }); // March 31, 2026
        segments[23] = getSegment({ amount: 202e18, milestone: 1_777_496_400 }); // April 30, 2026
        segments[24] = getSegment({ amount: 212e18, milestone: 1_780_174_800 }); // May 31, 2026
        segments[25] = getSegment({ amount: 216e18, milestone: 1_782_766_800 }); // June 30, 2026
        segments[26] = getSegment({ amount: 226e18, milestone: 1_785_445_200 }); // July 31, 2026
        segments[27] = getSegment({ amount: 233e18, milestone: 1_788_123_600 }); // August 31, 2026
        segments[28] = getSegment({ amount: 236e18, milestone: 1_790_715_600 }); // September 30, 2026
        segments[29] = getSegment({ amount: 247e18, milestone: 1_793_397_600 }); // October 31, 2026
        segments[30] = getSegment({ amount: 251e18, milestone: 1_795_989_600 }); // November 30, 2026
        segments[31] = getSegment({ amount: 261e18, milestone: 1_798_668_000 }); // December 31, 2026
        segments[32] = getSegment({ amount: 268e18, milestone: 1_801_346_400 }); // January 31, 2027
        segments[33] = getSegment({ amount: 264e18, milestone: 1_803_765_600 }); // February 28, 2027
        segments[34] = getSegment({ amount: 282e18, milestone: 1_806_440_400 }); // March 31, 2027
        segments[35] = getSegment({ amount: 285e18, milestone: 1_809_032_400 }); // April 30, 2027
        segments[36] = getSegment({ amount: 262e18, milestone: 1_811_710_800 }); // May 31, 2027
        return segments;
    }

    function getSegmentsForUser6() public pure returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 450e18, milestone: 1_706_652_000 }); // January 31, 2024
        segments[1] = getSegment({ amount: 492e18, milestone: 1_709_157_600 }); // February 29, 2024
        segments[2] = getSegment({ amount: 538e18, milestone: 1_711_836_000 }); // March 31, 2024
        segments[3] = getSegment({ amount: 578e18, milestone: 1_714_424_400 }); // April 30, 2024
        segments[4] = getSegment({ amount: 625e18, milestone: 1_717_102_800 }); // May 31, 2024
        segments[5] = getSegment({ amount: 665e18, milestone: 1_719_694_800 }); // June 30, 2024
        segments[6] = getSegment({ amount: 713e18, milestone: 1_722_373_200 }); // July 31, 2024
        segments[7] = getSegment({ amount: 757e18, milestone: 1_725_051_600 }); // August 31, 2024
        segments[8] = getSegment({ amount: 794e18, milestone: 1_727_643_600 }); // September 30, 2024
        segments[9] = getSegment({ amount: 845e18, milestone: 1_730_325_600 }); // October 31, 2024
        segments[10] = getSegment({ amount: 881e18, milestone: 1_732_917_600 }); // November 30, 2024
        segments[11] = getSegment({ amount: 932e18, milestone: 1_735_596_000 }); // December 31, 2024
        segments[12] = getSegment({ amount: 976e18, milestone: 1_738_274_400 }); // January 31, 2025
        segments[13] = getSegment({ amount: 991e18, milestone: 1_740_693_600 }); // February 28, 2025
        segments[14] = getSegment({ amount: 1062e18, milestone: 1_743_368_400 }); // March 31, 2025
        segments[15] = getSegment({ amount: 1096e18, milestone: 1_745_960_400 }); // April 30, 2025
        segments[16] = getSegment({ amount: 1150e18, milestone: 1_748_638_800 }); // May 31, 2025
        segments[17] = getSegment({ amount: 1182e18, milestone: 1_751_230_800 }); // June 30, 2025
        segments[18] = getSegment({ amount: 1238e18, milestone: 1_753_909_200 }); // July 31, 2025
        segments[19] = getSegment({ amount: 1282e18, milestone: 1_756_587_600 }); // August 31, 2025
        segments[20] = getSegment({ amount: 1311e18, milestone: 1_759_179_600 }); // September 30, 2025
        segments[21] = getSegment({ amount: 1370e18, milestone: 1_761_861_600 }); // October 31, 2025
        segments[22] = getSegment({ amount: 1397e18, milestone: 1_764_453_600 }); // November 30, 2025
        segments[23] = getSegment({ amount: 1458e18, milestone: 1_767_132_000 }); // December 31, 2025
        segments[24] = getSegment({ amount: 1501e18, milestone: 1_769_810_400 }); // January 31, 2026
        segments[25] = getSegment({ amount: 1490e18, milestone: 1_772_229_600 }); // February 28, 2026
        segments[26] = getSegment({ amount: 1588e18, milestone: 1_774_904_400 }); // March 31, 2026
        segments[27] = getSegment({ amount: 1612e18, milestone: 1_777_496_400 }); // April 30, 2026
        segments[28] = getSegment({ amount: 1221e18, milestone: 1_780_174_800 }); // May 31, 2026
        segments[29] = getSegment({ amount: 1041e18, milestone: 1_782_766_800 }); // June 30, 2026
        segments[30] = getSegment({ amount: 1042e18, milestone: 1_785_445_200 }); // July 31, 2026
        segments[31] = getSegment({ amount: 1041e18, milestone: 1_788_123_600 }); // August 31, 2026
        segments[32] = getSegment({ amount: 1041e18, milestone: 1_790_715_600 }); // September 30, 2026
        segments[33] = getSegment({ amount: 1041e18, milestone: 1_793_397_600 }); // October 31, 2026
        segments[34] = getSegment({ amount: 1041e18, milestone: 1_795_989_600 }); // November 30, 2026
        segments[35] = getSegment({ amount: 1042e18, milestone: 1_798_668_000 }); // December 31, 2026
        return segments;
    }

    function getSegmentsForUser7() public pure returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 235e18, milestone: 1_706_652_000 }); // January 31, 2024
        segments[1] = getSegment({ amount: 262e18, milestone: 1_709_157_600 }); // February 29, 2024
        segments[2] = getSegment({ amount: 293e18, milestone: 1_711_836_000 }); // March 31, 2024
        segments[3] = getSegment({ amount: 321e18, milestone: 1_714_424_400 }); // April 30, 2024
        segments[4] = getSegment({ amount: 352e18, milestone: 1_717_102_800 }); // May 31, 2024
        segments[5] = getSegment({ amount: 378e18, milestone: 1_719_694_800 }); // June 30, 2024
        segments[6] = getSegment({ amount: 410e18, milestone: 1_722_373_200 }); // July 31, 2024
        segments[7] = getSegment({ amount: 440e18, milestone: 1_725_051_600 }); // August 31, 2024
        segments[8] = getSegment({ amount: 466e18, milestone: 1_727_643_600 }); // September 30, 2024
        segments[9] = getSegment({ amount: 498e18, milestone: 1_730_325_600 }); // October 31, 2024
        segments[10] = getSegment({ amount: 523e18, milestone: 1_732_917_600 }); // November 30, 2024
        segments[11] = getSegment({ amount: 558e18, milestone: 1_735_596_000 }); // December 31, 2024
        segments[12] = getSegment({ amount: 586e18, milestone: 1_738_274_400 }); // January 31, 2025
        segments[13] = getSegment({ amount: 597e18, milestone: 1_740_693_600 }); // February 28, 2025
        segments[14] = getSegment({ amount: 645e18, milestone: 1_743_368_400 }); // March 31, 2025
        segments[15] = getSegment({ amount: 666e18, milestone: 1_745_960_400 }); // April 30, 2025
        segments[16] = getSegment({ amount: 704e18, milestone: 1_748_638_800 }); // May 31, 2025
        segments[17] = getSegment({ amount: 724e18, milestone: 1_751_230_800 }); // June 30, 2025
        segments[18] = getSegment({ amount: 762e18, milestone: 1_753_909_200 }); // July 31, 2025
        segments[19] = getSegment({ amount: 792e18, milestone: 1_756_587_600 }); // August 31, 2025
        segments[20] = getSegment({ amount: 811e18, milestone: 1_759_179_600 }); // September 30, 2025
        segments[21] = getSegment({ amount: 850e18, milestone: 1_761_861_600 }); // October 31, 2025
        segments[22] = getSegment({ amount: 869e18, milestone: 1_764_453_600 }); // November 30, 2025
        segments[23] = getSegment({ amount: 909e18, milestone: 1_767_132_000 }); // December 31, 2025
        segments[24] = getSegment({ amount: 939e18, milestone: 1_769_810_400 }); // January 31, 2026
        segments[25] = getSegment({ amount: 931e18, milestone: 1_772_229_600 }); // February 28, 2026
        segments[26] = getSegment({ amount: 996e18, milestone: 1_774_904_400 }); // March 31, 2026
        segments[27] = getSegment({ amount: 1013e18, milestone: 1_777_496_400 }); // April 30, 2026
        segments[28] = getSegment({ amount: 1055e18, milestone: 1_780_174_800 }); // May 31, 2026
        segments[29] = getSegment({ amount: 1070e18, milestone: 1_782_766_800 }); // June 30, 2026
        segments[30] = getSegment({ amount: 1114e18, milestone: 1_785_445_200 }); // July 31, 2026
        segments[31] = getSegment({ amount: 1143e18, milestone: 1_788_123_600 }); // August 31, 2026
        segments[32] = getSegment({ amount: 1094e18, milestone: 1_790_715_600 }); // September 30, 2026
        segments[33] = getSegment({ amount: 697e18, milestone: 1_793_397_600 }); // October 31, 2026
        segments[34] = getSegment({ amount: 698e18, milestone: 1_795_989_600 }); // November 30, 2026
        segments[35] = getSegment({ amount: 697e18, milestone: 1_798_668_000 }); // December 31, 2026
        return segments;
    }

    function getSegmentsForUser8() public pure returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 283e18, milestone: 1_706_652_000 }); // January 31, 2024
        segments[1] = getSegment({ amount: 320e18, milestone: 1_709_157_600 }); // February 29, 2024
        segments[2] = getSegment({ amount: 360e18, milestone: 1_711_836_000 }); // March 31, 2024
        segments[3] = getSegment({ amount: 398e18, milestone: 1_714_424_400 }); // April 30, 2024
        segments[4] = getSegment({ amount: 439e18, milestone: 1_717_102_800 }); // May 31, 2024
        segments[5] = getSegment({ amount: 475e18, milestone: 1_719_694_800 }); // June 30, 2024
        segments[6] = getSegment({ amount: 518e18, milestone: 1_722_373_200 }); // July 31, 2024
        segments[7] = getSegment({ amount: 557e18, milestone: 1_725_051_600 }); // August 31, 2024
        segments[8] = getSegment({ amount: 591e18, milestone: 1_727_643_600 }); // September 30, 2024
        segments[9] = getSegment({ amount: 636e18, milestone: 1_730_325_600 }); // October 31, 2024
        segments[10] = getSegment({ amount: 668e18, milestone: 1_732_917_600 }); // November 30, 2024
        segments[11] = getSegment({ amount: 714e18, milestone: 1_735_596_000 }); // December 31, 2024
        segments[12] = getSegment({ amount: 754e18, milestone: 1_738_274_400 }); // January 31, 2025
        segments[13] = getSegment({ amount: 767e18, milestone: 1_740_693_600 }); // February 28, 2025
        segments[14] = getSegment({ amount: 831e18, milestone: 1_743_368_400 }); // March 31, 2025
        segments[15] = getSegment({ amount: 860e18, milestone: 1_745_960_400 }); // April 30, 2025
        segments[16] = getSegment({ amount: 910e18, milestone: 1_748_638_800 }); // May 31, 2025
        segments[17] = getSegment({ amount: 937e18, milestone: 1_751_230_800 }); // June 30, 2025
        segments[18] = getSegment({ amount: 989e18, milestone: 1_753_909_200 }); // July 31, 2025
        segments[19] = getSegment({ amount: 1027e18, milestone: 1_756_587_600 }); // August 31, 2025
        segments[20] = getSegment({ amount: 1054e18, milestone: 1_759_179_600 }); // September 30, 2025
        segments[21] = getSegment({ amount: 1106e18, milestone: 1_761_861_600 }); // October 31, 2025
        segments[22] = getSegment({ amount: 1131e18, milestone: 1_764_453_600 }); // November 30, 2025
        segments[23] = getSegment({ amount: 1185e18, milestone: 1_767_132_000 }); // December 31, 2025
        segments[24] = getSegment({ amount: 1224e18, milestone: 1_769_810_400 }); // January 31, 2026
        segments[25] = getSegment({ amount: 1214e18, milestone: 1_772_229_600 }); // February 28, 2026
        segments[26] = getSegment({ amount: 1302e18, milestone: 1_774_904_400 }); // March 31, 2026
        segments[27] = getSegment({ amount: 1323e18, milestone: 1_777_496_400 }); // April 30, 2026
        segments[28] = getSegment({ amount: 1380e18, milestone: 1_780_174_800 }); // May 31, 2026
        segments[29] = getSegment({ amount: 1401e18, milestone: 1_782_766_800 }); // June 30, 2026
        segments[30] = getSegment({ amount: 1458e18, milestone: 1_785_445_200 }); // July 31, 2026
        segments[31] = getSegment({ amount: 1498e18, milestone: 1_788_123_600 }); // August 31, 2026
        segments[32] = getSegment({ amount: 1517e18, milestone: 1_790_715_600 }); // September 30, 2026
        segments[33] = getSegment({ amount: 1576e18, milestone: 1_793_397_600 }); // October 31, 2026
        segments[34] = getSegment({ amount: 1237e18, milestone: 1_795_989_600 }); // November 30, 2026
        segments[35] = getSegment({ amount: 932e18, milestone: 1_798_668_000 }); // December 31, 2026
        return segments;
    }

    function getSegmentsForUser9() public pure returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 63e18, milestone: 1_714_424_400 }); // April 30, 2024
        segments[1] = getSegment({ amount: 74e18, milestone: 1_717_102_800 }); // May 31, 2024
        segments[2] = getSegment({ amount: 84e18, milestone: 1_719_694_800 }); // June 30, 2024
        segments[3] = getSegment({ amount: 95e18, milestone: 1_722_373_200 }); // July 31, 2024
        segments[4] = getSegment({ amount: 105e18, milestone: 1_725_051_600 }); // August 31, 2024
        segments[5] = getSegment({ amount: 115e18, milestone: 1_727_643_600 }); // September 30, 2024
        segments[6] = getSegment({ amount: 126e18, milestone: 1_730_325_600 }); // October 31, 2024
        segments[7] = getSegment({ amount: 135e18, milestone: 1_732_917_600 }); // November 30, 2024
        segments[8] = getSegment({ amount: 147e18, milestone: 1_735_596_000 }); // December 31, 2024
        segments[9] = getSegment({ amount: 157e18, milestone: 1_738_274_400 }); // January 31, 2025
        segments[10] = getSegment({ amount: 162e18, milestone: 1_740_693_600 }); // February 28, 2025
        segments[11] = getSegment({ amount: 177e18, milestone: 1_743_368_400 }); // March 31, 2025
        segments[12] = getSegment({ amount: 186e18, milestone: 1_745_960_400 }); // April 30, 2025
        segments[13] = getSegment({ amount: 199e18, milestone: 1_748_638_800 }); // May 31, 2025
        segments[14] = getSegment({ amount: 206e18, milestone: 1_751_230_800 }); // June 30, 2025
        segments[15] = getSegment({ amount: 219e18, milestone: 1_753_909_200 }); // July 31, 2025
        segments[16] = getSegment({ amount: 230e18, milestone: 1_756_587_600 }); // August 31, 2025
        segments[17] = getSegment({ amount: 237e18, milestone: 1_759_179_600 }); // September 30, 2025
        segments[18] = getSegment({ amount: 250e18, milestone: 1_761_861_600 }); // October 31, 2025
        segments[19] = getSegment({ amount: 258e18, milestone: 1_764_453_600 }); // November 30, 2025
        segments[20] = getSegment({ amount: 271e18, milestone: 1_767_132_000 }); // December 31, 2025
        segments[21] = getSegment({ amount: 281e18, milestone: 1_769_810_400 }); // January 31, 2026
        segments[22] = getSegment({ amount: 281e18, milestone: 1_772_229_600 }); // February 28, 2026
        segments[23] = getSegment({ amount: 302e18, milestone: 1_774_904_400 }); // March 31, 2026
        segments[24] = getSegment({ amount: 308e18, milestone: 1_777_496_400 }); // April 30, 2026
        segments[25] = getSegment({ amount: 323e18, milestone: 1_780_174_800 }); // May 31, 2026
        segments[26] = getSegment({ amount: 329e18, milestone: 1_782_766_800 }); // June 30, 2026
        segments[27] = getSegment({ amount: 343e18, milestone: 1_785_445_200 }); // July 31, 2026
        segments[28] = getSegment({ amount: 354e18, milestone: 1_788_123_600 }); // August 31, 2026
        segments[29] = getSegment({ amount: 360e18, milestone: 1_790_715_600 }); // September 30, 2026
        segments[30] = getSegment({ amount: 375e18, milestone: 1_793_397_600 }); // October 31, 2026
        segments[31] = getSegment({ amount: 379e18, milestone: 1_795_989_600 }); // November 30, 2026
        segments[32] = getSegment({ amount: 396e18, milestone: 1_798_668_000 }); // December 31, 2026
        segments[33] = getSegment({ amount: 406e18, milestone: 1_801_346_400 }); // January 31, 2027
        segments[34] = getSegment({ amount: 399e18, milestone: 1_803_765_600 }); // February 28, 2027
        segments[35] = getSegment({ amount: 426e18, milestone: 1_806_440_400 }); // March 31, 2027
        segments[36] = getSegment({ amount: 368e18, milestone: 1_809_032_400 }); // April 30, 2027
        return segments;
    }

    function getSegmentsForUser10() public pure returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 32e18, milestone: 1_714_424_400 }); // April 30, 2024
        segments[1] = getSegment({ amount: 37e18, milestone: 1_717_102_800 }); // May 31, 2024
        segments[2] = getSegment({ amount: 42e18, milestone: 1_719_694_800 }); // June 30, 2024
        segments[3] = getSegment({ amount: 47e18, milestone: 1_722_373_200 }); // July 31, 2024
        segments[4] = getSegment({ amount: 53e18, milestone: 1_725_051_600 }); // August 31, 2024
        segments[5] = getSegment({ amount: 57e18, milestone: 1_727_643_600 }); // September 30, 2024
        segments[6] = getSegment({ amount: 63e18, milestone: 1_730_325_600 }); // October 31, 2024
        segments[7] = getSegment({ amount: 67e18, milestone: 1_732_917_600 }); // November 30, 2024
        segments[8] = getSegment({ amount: 74e18, milestone: 1_735_596_000 }); // December 31, 2024
        segments[9] = getSegment({ amount: 78e18, milestone: 1_738_274_400 }); // January 31, 2025
        segments[10] = getSegment({ amount: 81e18, milestone: 1_740_693_600 }); // February 28, 2025
        segments[11] = getSegment({ amount: 89e18, milestone: 1_743_368_400 }); // March 31, 2025
        segments[12] = getSegment({ amount: 93e18, milestone: 1_745_960_400 }); // April 30, 2025
        segments[13] = getSegment({ amount: 99e18, milestone: 1_748_638_800 }); // May 31, 2025
        segments[14] = getSegment({ amount: 104e18, milestone: 1_751_230_800 }); // June 30, 2025
        segments[15] = getSegment({ amount: 109e18, milestone: 1_753_909_200 }); // July 31, 2025
        segments[16] = getSegment({ amount: 115e18, milestone: 1_756_587_600 }); // August 31, 2025
        segments[17] = getSegment({ amount: 118e18, milestone: 1_759_179_600 }); // September 30, 2025
        segments[18] = getSegment({ amount: 126e18, milestone: 1_761_861_600 }); // October 31, 2025
        segments[19] = getSegment({ amount: 128e18, milestone: 1_764_453_600 }); // November 30, 2025
        segments[20] = getSegment({ amount: 136e18, milestone: 1_767_132_000 }); // December 31, 2025
        segments[21] = getSegment({ amount: 141e18, milestone: 1_769_810_400 }); // January 31, 2026
        segments[22] = getSegment({ amount: 140e18, milestone: 1_772_229_600 }); // February 28, 2026
        segments[23] = getSegment({ amount: 151e18, milestone: 1_774_904_400 }); // March 31, 2026
        segments[24] = getSegment({ amount: 154e18, milestone: 1_777_496_400 }); // April 30, 2026
        segments[25] = getSegment({ amount: 161e18, milestone: 1_780_174_800 }); // May 31, 2026
        segments[26] = getSegment({ amount: 165e18, milestone: 1_782_766_800 }); // June 30, 2026
        segments[27] = getSegment({ amount: 172e18, milestone: 1_785_445_200 }); // July 31, 2026
        segments[28] = getSegment({ amount: 177e18, milestone: 1_788_123_600 }); // August 31, 2026
        segments[29] = getSegment({ amount: 179e18, milestone: 1_790_715_600 }); // September 30, 2026
        segments[30] = getSegment({ amount: 188e18, milestone: 1_793_397_600 }); // October 31, 2026
        segments[31] = getSegment({ amount: 190e18, milestone: 1_795_989_600 }); // November 30, 2026
        segments[32] = getSegment({ amount: 197e18, milestone: 1_798_668_000 }); // December 31, 2026
        segments[33] = getSegment({ amount: 204e18, milestone: 1_801_346_400 }); // January 31, 2027
        segments[34] = getSegment({ amount: 199e18, milestone: 1_803_765_600 }); // February 28, 2027
        segments[35] = getSegment({ amount: 213e18, milestone: 1_806_440_400 }); // March 31, 2027
        segments[36] = getSegment({ amount: 184e18, milestone: 1_809_032_400 }); // April 30, 2027
        return segments;
    }

    function getSegmentsForUser11() public pure returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 7790e18, milestone: 1_706_652_000 }); // January 31, 2024
        segments[1] = getSegment({ amount: 8269e18, milestone: 1_709_157_600 }); // February 29, 2024
        segments[2] = getSegment({ amount: 8798e18, milestone: 1_711_836_000 }); // March 31, 2024
        segments[3] = getSegment({ amount: 9277e18, milestone: 1_714_424_400 }); // April 30, 2024
        segments[4] = getSegment({ amount: 9814e18, milestone: 1_717_102_800 }); // May 31, 2024
        segments[5] = getSegment({ amount: 10_277e18, milestone: 1_719_694_800 }); // June 30, 2024
        segments[6] = getSegment({ amount: 9153e18, milestone: 1_722_373_200 }); // July 31, 2024
        segments[7] = getSegment({ amount: 9054e18, milestone: 1_725_051_600 }); // August 31, 2024
        segments[8] = getSegment({ amount: 9054e18, milestone: 1_727_643_600 }); // September 30, 2024
        segments[9] = getSegment({ amount: 9054e18, milestone: 1_730_325_600 }); // October 31, 2024
        segments[10] = getSegment({ amount: 9054e18, milestone: 1_732_917_600 }); // November 30, 2024
        segments[11] = getSegment({ amount: 9054e18, milestone: 1_735_596_000 }); // December 31, 2024
        segments[12] = getSegment({ amount: 9054e18, milestone: 1_738_274_400 }); // January 31, 2025
        segments[13] = getSegment({ amount: 9054e18, milestone: 1_740_693_600 }); // February 28, 2025
        segments[14] = getSegment({ amount: 9055e18, milestone: 1_743_368_400 }); // March 31, 2025
        segments[15] = getSegment({ amount: 9054e18, milestone: 1_745_960_400 }); // April 30, 2025
        segments[16] = getSegment({ amount: 9054e18, milestone: 1_748_638_800 }); // May 31, 2025
        segments[17] = getSegment({ amount: 9054e18, milestone: 1_751_230_800 }); // June 30, 2025
        segments[18] = getSegment({ amount: 9054e18, milestone: 1_753_909_200 }); // July 31, 2025
        segments[19] = getSegment({ amount: 9054e18, milestone: 1_756_587_600 }); // August 31, 2025
        segments[20] = getSegment({ amount: 9054e18, milestone: 1_759_179_600 }); // September 30, 2025
        segments[21] = getSegment({ amount: 9054e18, milestone: 1_761_861_600 }); // October 31, 2025
        segments[22] = getSegment({ amount: 9054e18, milestone: 1_764_453_600 }); // November 30, 2025
        segments[23] = getSegment({ amount: 9054e18, milestone: 1_767_132_000 }); // December 31, 2025
        segments[24] = getSegment({ amount: 9054e18, milestone: 1_769_810_400 }); // January 31, 2026
        segments[25] = getSegment({ amount: 9054e18, milestone: 1_772_229_600 }); // February 28, 2026
        segments[26] = getSegment({ amount: 9054e18, milestone: 1_774_904_400 }); // March 31, 2026
        segments[27] = getSegment({ amount: 9054e18, milestone: 1_777_496_400 }); // April 30, 2026
        segments[28] = getSegment({ amount: 9054e18, milestone: 1_780_174_800 }); // May 31, 2026
        segments[29] = getSegment({ amount: 9054e18, milestone: 1_782_766_800 }); // June 30, 2026
        segments[30] = getSegment({ amount: 9054e18, milestone: 1_785_445_200 }); // July 31, 2026
        segments[31] = getSegment({ amount: 9054e18, milestone: 1_788_123_600 }); // August 31, 2026
        segments[32] = getSegment({ amount: 9054e18, milestone: 1_790_715_600 }); // September 30, 2026
        segments[33] = getSegment({ amount: 9054e18, milestone: 1_793_397_600 }); // October 31, 2026
        segments[34] = getSegment({ amount: 9054e18, milestone: 1_795_989_600 }); // November 30, 2026
        segments[35] = getSegment({ amount: 9054e18, milestone: 1_798_668_000 }); // December 31, 2026
        return segments;
    }

    function getSegmentsForUser12() public pure returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 31_160e18, milestone: 1_706_652_000 }); // January 31, 2024
        segments[1] = getSegment({ amount: 33_077e18, milestone: 1_709_157_600 }); // February 29, 2024
        segments[2] = getSegment({ amount: 35_192e18, milestone: 1_711_836_000 }); // March 31, 2024
        segments[3] = getSegment({ amount: 37_108e18, milestone: 1_714_424_400 }); // April 30, 2024
        segments[4] = getSegment({ amount: 39_257e18, milestone: 1_717_102_800 }); // May 31, 2024
        segments[5] = getSegment({ amount: 41_106e18, milestone: 1_719_694_800 }); // June 30, 2024
        segments[6] = getSegment({ amount: 36_613e18, milestone: 1_722_373_200 }); // July 31, 2024
        segments[7] = getSegment({ amount: 36_216e18, milestone: 1_725_051_600 }); // August 31, 2024
        segments[8] = getSegment({ amount: 36_216e18, milestone: 1_727_643_600 }); // September 30, 2024
        segments[9] = getSegment({ amount: 36_216e18, milestone: 1_730_325_600 }); // October 31, 2024
        segments[10] = getSegment({ amount: 36_216e18, milestone: 1_732_917_600 }); // November 30, 2024
        segments[11] = getSegment({ amount: 36_216e18, milestone: 1_735_596_000 }); // December 31, 2024
        segments[12] = getSegment({ amount: 36_216e18, milestone: 1_738_274_400 }); // January 31, 2025
        segments[13] = getSegment({ amount: 36_217e18, milestone: 1_740_693_600 }); // February 28, 2025
        segments[14] = getSegment({ amount: 36_216e18, milestone: 1_743_368_400 }); // March 31, 2025
        segments[15] = getSegment({ amount: 36_216e18, milestone: 1_745_960_400 }); // April 30, 2025
        segments[16] = getSegment({ amount: 36_216e18, milestone: 1_748_638_800 }); // May 31, 2025
        segments[17] = getSegment({ amount: 36_216e18, milestone: 1_751_230_800 }); // June 30, 2025
        segments[18] = getSegment({ amount: 36_216e18, milestone: 1_753_909_200 }); // July 31, 2025
        segments[19] = getSegment({ amount: 36_216e18, milestone: 1_756_587_600 }); // August 31, 2025
        segments[20] = getSegment({ amount: 36_216e18, milestone: 1_759_179_600 }); // September 30, 2025
        segments[21] = getSegment({ amount: 36_216e18, milestone: 1_761_861_600 }); // October 31, 2025
        segments[22] = getSegment({ amount: 36_217e18, milestone: 1_764_453_600 }); // November 30, 2025
        segments[23] = getSegment({ amount: 36_216e18, milestone: 1_767_132_000 }); // December 31, 2025
        segments[24] = getSegment({ amount: 36_216e18, milestone: 1_769_810_400 }); // January 31, 2026
        segments[25] = getSegment({ amount: 36_216e18, milestone: 1_772_229_600 }); // February 28, 2026
        segments[26] = getSegment({ amount: 36_216e18, milestone: 1_774_904_400 }); // March 31, 2026
        segments[27] = getSegment({ amount: 36_216e18, milestone: 1_777_496_400 }); // April 30, 2026
        segments[28] = getSegment({ amount: 36_216e18, milestone: 1_780_174_800 }); // May 31, 2026
        segments[29] = getSegment({ amount: 36_216e18, milestone: 1_782_766_800 }); // June 30, 2026
        segments[30] = getSegment({ amount: 36_216e18, milestone: 1_785_445_200 }); // July 31, 2026
        segments[31] = getSegment({ amount: 36_217e18, milestone: 1_788_123_600 }); // August 31, 2026
        segments[32] = getSegment({ amount: 36_216e18, milestone: 1_790_715_600 }); // September 30, 2026
        segments[33] = getSegment({ amount: 36_216e18, milestone: 1_793_397_600 }); // October 31, 2026
        segments[34] = getSegment({ amount: 36_216e18, milestone: 1_795_989_600 }); // November 30, 2026
        segments[35] = getSegment({ amount: 36_216e18, milestone: 1_798_668_000 }); // December 31, 2026
        return segments;
    }

    function getSegmentsForUser13() public pure returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 807e18, milestone: 1_706_652_000 }); // January 31, 2024
        segments[1] = getSegment({ amount: 858e18, milestone: 1_709_157_600 }); // February 29, 2024
        segments[2] = getSegment({ amount: 914e18, milestone: 1_711_836_000 }); // March 31, 2024
        segments[3] = getSegment({ amount: 966e18, milestone: 1_714_424_400 }); // April 30, 2024
        segments[4] = getSegment({ amount: 1022e18, milestone: 1_717_102_800 }); // May 31, 2024
        segments[5] = getSegment({ amount: 1072e18, milestone: 1_719_694_800 }); // June 30, 2024
        segments[6] = getSegment({ amount: 1131e18, milestone: 1_722_373_200 }); // July 31, 2024
        segments[7] = getSegment({ amount: 1185e18, milestone: 1_725_051_600 }); // August 31, 2024
        segments[8] = getSegment({ amount: 1232e18, milestone: 1_727_643_600 }); // September 30, 2024
        segments[9] = getSegment({ amount: 1294e18, milestone: 1_730_325_600 }); // October 31, 2024
        segments[10] = getSegment({ amount: 1338e18, milestone: 1_732_917_600 }); // November 30, 2024
        segments[11] = getSegment({ amount: 1402e18, milestone: 1_735_596_000 }); // December 31, 2024
        segments[12] = getSegment({ amount: 1456e18, milestone: 1_738_274_400 }); // January 31, 2025
        segments[13] = getSegment({ amount: 1474e18, milestone: 1_740_693_600 }); // February 28, 2025
        segments[14] = getSegment({ amount: 1563e18, milestone: 1_743_368_400 }); // March 31, 2025
        segments[15] = getSegment({ amount: 1604e18, milestone: 1_745_960_400 }); // April 30, 2025
        segments[16] = getSegment({ amount: 1671e18, milestone: 1_748_638_800 }); // May 31, 2025
        segments[17] = getSegment({ amount: 1710e18, milestone: 1_751_230_800 }); // June 30, 2025
        segments[18] = getSegment({ amount: 1729e18, milestone: 1_753_909_200 }); // July 31, 2025
        segments[19] = getSegment({ amount: 1285e18, milestone: 1_756_587_600 }); // August 31, 2025
        segments[20] = getSegment({ amount: 1286e18, milestone: 1_759_179_600 }); // September 30, 2025
        segments[21] = getSegment({ amount: 1286e18, milestone: 1_761_861_600 }); // October 31, 2025
        segments[22] = getSegment({ amount: 1285e18, milestone: 1_764_453_600 }); // November 30, 2025
        segments[23] = getSegment({ amount: 1286e18, milestone: 1_767_132_000 }); // December 31, 2025
        segments[24] = getSegment({ amount: 1286e18, milestone: 1_769_810_400 }); // January 31, 2026
        segments[25] = getSegment({ amount: 1285e18, milestone: 1_772_229_600 }); // February 28, 2026
        segments[26] = getSegment({ amount: 1286e18, milestone: 1_774_904_400 }); // March 31, 2026
        segments[27] = getSegment({ amount: 1286e18, milestone: 1_777_496_400 }); // April 30, 2026
        segments[28] = getSegment({ amount: 1286e18, milestone: 1_780_174_800 }); // May 31, 2026
        segments[29] = getSegment({ amount: 1285e18, milestone: 1_782_766_800 }); // June 30, 2026
        segments[30] = getSegment({ amount: 1286e18, milestone: 1_785_445_200 }); // July 31, 2026
        segments[31] = getSegment({ amount: 1286e18, milestone: 1_788_123_600 }); // August 31, 2026
        segments[32] = getSegment({ amount: 1285e18, milestone: 1_790_715_600 }); // September 30, 2026
        segments[33] = getSegment({ amount: 1286e18, milestone: 1_793_397_600 }); // October 31, 2026
        segments[34] = getSegment({ amount: 1286e18, milestone: 1_795_989_600 }); // November 30, 2026
        segments[35] = getSegment({ amount: 1285e18, milestone: 1_798_668_000 }); // December 31, 2026
        return segments;
    }

    function getSegmentsForUser14() public pure returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 397e18, milestone: 1_706_652_000 }); // January 31, 2024
        segments[1] = getSegment({ amount: 423e18, milestone: 1_709_157_600 }); // February 29, 2024
        segments[2] = getSegment({ amount: 451e18, milestone: 1_711_836_000 }); // March 31, 2024
        segments[3] = getSegment({ amount: 477e18, milestone: 1_714_424_400 }); // April 30, 2024
        segments[4] = getSegment({ amount: 505e18, milestone: 1_717_102_800 }); // May 31, 2024
        segments[5] = getSegment({ amount: 530e18, milestone: 1_719_694_800 }); // June 30, 2024
        segments[6] = getSegment({ amount: 559e18, milestone: 1_722_373_200 }); // July 31, 2024
        segments[7] = getSegment({ amount: 586e18, milestone: 1_725_051_600 }); // August 31, 2024
        segments[8] = getSegment({ amount: 610e18, milestone: 1_727_643_600 }); // September 30, 2024
        segments[9] = getSegment({ amount: 641e18, milestone: 1_730_325_600 }); // October 31, 2024
        segments[10] = getSegment({ amount: 663e18, milestone: 1_732_917_600 }); // November 30, 2024
        segments[11] = getSegment({ amount: 695e18, milestone: 1_735_596_000 }); // December 31, 2024
        segments[12] = getSegment({ amount: 722e18, milestone: 1_738_274_400 }); // January 31, 2025
        segments[13] = getSegment({ amount: 730e18, milestone: 1_740_693_600 }); // February 28, 2025
        segments[14] = getSegment({ amount: 776e18, milestone: 1_743_368_400 }); // March 31, 2025
        segments[15] = getSegment({ amount: 795e18, milestone: 1_745_960_400 }); // April 30, 2025
        segments[16] = getSegment({ amount: 830e18, milestone: 1_748_638_800 }); // May 31, 2025
        segments[17] = getSegment({ amount: 848e18, milestone: 1_751_230_800 }); // June 30, 2025
        segments[18] = getSegment({ amount: 884e18, milestone: 1_753_909_200 }); // July 31, 2025
        segments[19] = getSegment({ amount: 735e18, milestone: 1_756_587_600 }); // August 31, 2025
        segments[20] = getSegment({ amount: 643e18, milestone: 1_759_179_600 }); // September 30, 2025
        segments[21] = getSegment({ amount: 642e18, milestone: 1_761_861_600 }); // October 31, 2025
        segments[22] = getSegment({ amount: 643e18, milestone: 1_764_453_600 }); // November 30, 2025
        segments[23] = getSegment({ amount: 643e18, milestone: 1_767_132_000 }); // December 31, 2025
        segments[24] = getSegment({ amount: 643e18, milestone: 1_769_810_400 }); // January 31, 2026
        segments[25] = getSegment({ amount: 643e18, milestone: 1_772_229_600 }); // February 28, 2026
        segments[26] = getSegment({ amount: 643e18, milestone: 1_774_904_400 }); // March 31, 2026
        segments[27] = getSegment({ amount: 642e18, milestone: 1_777_496_400 }); // April 30, 2026
        segments[28] = getSegment({ amount: 643e18, milestone: 1_780_174_800 }); // May 31, 2026
        segments[29] = getSegment({ amount: 643e18, milestone: 1_782_766_800 }); // June 30, 2026
        segments[30] = getSegment({ amount: 643e18, milestone: 1_785_445_200 }); // July 31, 2026
        segments[31] = getSegment({ amount: 643e18, milestone: 1_788_123_600 }); // August 31, 2026
        segments[32] = getSegment({ amount: 643e18, milestone: 1_790_715_600 }); // September 30, 2026
        segments[33] = getSegment({ amount: 642e18, milestone: 1_793_397_600 }); // October 31, 2026
        segments[34] = getSegment({ amount: 643e18, milestone: 1_795_989_600 }); // November 30, 2026
        segments[35] = getSegment({ amount: 643e18, milestone: 1_798_668_000 }); // December 31, 2026
        return segments;
    }

    function getSegmentsForUser15() public pure returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 808e18, milestone: 1_706_652_000 }); // January 31, 2024
        segments[1] = getSegment({ amount: 859e18, milestone: 1_709_157_600 }); // February 29, 2024
        segments[2] = getSegment({ amount: 915e18, milestone: 1_711_836_000 }); // March 31, 2024
        segments[3] = getSegment({ amount: 966e18, milestone: 1_714_424_400 }); // April 30, 2024
        segments[4] = getSegment({ amount: 1024e18, milestone: 1_717_102_800 }); // May 31, 2024
        segments[5] = getSegment({ amount: 1072e18, milestone: 1_719_694_800 }); // June 30, 2024
        segments[6] = getSegment({ amount: 1132e18, milestone: 1_722_373_200 }); // July 31, 2024
        segments[7] = getSegment({ amount: 1186e18, milestone: 1_725_051_600 }); // August 31, 2024
        segments[8] = getSegment({ amount: 1233e18, milestone: 1_727_643_600 }); // September 30, 2024
        segments[9] = getSegment({ amount: 1295e18, milestone: 1_730_325_600 }); // October 31, 2024
        segments[10] = getSegment({ amount: 1339e18, milestone: 1_732_917_600 }); // November 30, 2024
        segments[11] = getSegment({ amount: 1403e18, milestone: 1_735_596_000 }); // December 31, 2024
        segments[12] = getSegment({ amount: 1457e18, milestone: 1_738_274_400 }); // January 31, 2025
        segments[13] = getSegment({ amount: 1475e18, milestone: 1_740_693_600 }); // February 28, 2025
        segments[14] = getSegment({ amount: 1564e18, milestone: 1_743_368_400 }); // March 31, 2025
        segments[15] = getSegment({ amount: 1604e18, milestone: 1_745_960_400 }); // April 30, 2025
        segments[16] = getSegment({ amount: 1672e18, milestone: 1_748_638_800 }); // May 31, 2025
        segments[17] = getSegment({ amount: 1710e18, milestone: 1_751_230_800 }); // June 30, 2025
        segments[18] = getSegment({ amount: 1714e18, milestone: 1_753_909_200 }); // July 31, 2025
        segments[19] = getSegment({ amount: 1285e18, milestone: 1_756_587_600 }); // August 31, 2025
        segments[20] = getSegment({ amount: 1286e18, milestone: 1_759_179_600 }); // September 30, 2025
        segments[21] = getSegment({ amount: 1286e18, milestone: 1_761_861_600 }); // October 31, 2025
        segments[22] = getSegment({ amount: 1285e18, milestone: 1_764_453_600 }); // November 30, 2025
        segments[23] = getSegment({ amount: 1286e18, milestone: 1_767_132_000 }); // December 31, 2025
        segments[24] = getSegment({ amount: 1286e18, milestone: 1_769_810_400 }); // January 31, 2026
        segments[25] = getSegment({ amount: 1285e18, milestone: 1_772_229_600 }); // February 28, 2026
        segments[26] = getSegment({ amount: 1286e18, milestone: 1_774_904_400 }); // March 31, 2026
        segments[27] = getSegment({ amount: 1286e18, milestone: 1_777_496_400 }); // April 30, 2026
        segments[28] = getSegment({ amount: 1286e18, milestone: 1_780_174_800 }); // May 31, 2026
        segments[29] = getSegment({ amount: 1285e18, milestone: 1_782_766_800 }); // June 30, 2026
        segments[30] = getSegment({ amount: 1286e18, milestone: 1_785_445_200 }); // July 31, 2026
        segments[31] = getSegment({ amount: 1286e18, milestone: 1_788_123_600 }); // August 31, 2026
        segments[32] = getSegment({ amount: 1285e18, milestone: 1_790_715_600 }); // September 30, 2026
        segments[33] = getSegment({ amount: 1286e18, milestone: 1_793_397_600 }); // October 31, 2026
        segments[34] = getSegment({ amount: 1286e18, milestone: 1_795_989_600 }); // November 30, 2026
        segments[35] = getSegment({ amount: 1285e18, milestone: 1_798_668_000 }); // December 31, 2026
        return segments;
    }

    function getSegmentsForUser16() public pure returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 68e18, milestone: 1_727_643_600 }); // September 30, 2024
        segments[1] = getSegment({ amount: 80e18, milestone: 1_730_325_600 }); // October 31, 2024
        segments[2] = getSegment({ amount: 91e18, milestone: 1_732_917_600 }); // November 30, 2024
        segments[3] = getSegment({ amount: 102e18, milestone: 1_735_596_000 }); // December 31, 2024
        segments[4] = getSegment({ amount: 114e18, milestone: 1_738_274_400 }); // January 31, 2025
        segments[5] = getSegment({ amount: 125e18, milestone: 1_740_693_600 }); // February 28, 2025
        segments[6] = getSegment({ amount: 137e18, milestone: 1_743_368_400 }); // March 31, 2025
        segments[7] = getSegment({ amount: 148e18, milestone: 1_745_960_400 }); // April 30, 2025
        segments[8] = getSegment({ amount: 159e18, milestone: 1_748_638_800 }); // May 31, 2025
        segments[9] = getSegment({ amount: 171e18, milestone: 1_751_230_800 }); // June 30, 2025
        segments[10] = getSegment({ amount: 182e18, milestone: 1_753_909_200 }); // July 31, 2025
        segments[11] = getSegment({ amount: 193e18, milestone: 1_756_587_600 }); // August 31, 2025
        segments[12] = getSegment({ amount: 205e18, milestone: 1_759_179_600 }); // September 30, 2025
        segments[13] = getSegment({ amount: 216e18, milestone: 1_761_861_600 }); // October 31, 2025
        segments[14] = getSegment({ amount: 228e18, milestone: 1_764_453_600 }); // November 30, 2025
        segments[15] = getSegment({ amount: 239e18, milestone: 1_767_132_000 }); // December 31, 2025
        segments[16] = getSegment({ amount: 250e18, milestone: 1_769_810_400 }); // January 31, 2026
        segments[17] = getSegment({ amount: 262e18, milestone: 1_772_229_600 }); // February 28, 2026
        segments[18] = getSegment({ amount: 273e18, milestone: 1_774_904_400 }); // March 31, 2026
        segments[19] = getSegment({ amount: 284e18, milestone: 1_777_496_400 }); // April 30, 2026
        segments[20] = getSegment({ amount: 296e18, milestone: 1_780_174_800 }); // May 31, 2026
        segments[21] = getSegment({ amount: 307e18, milestone: 1_782_766_800 }); // June 30, 2026
        segments[22] = getSegment({ amount: 319e18, milestone: 1_785_445_200 }); // July 31, 2026
        segments[23] = getSegment({ amount: 330e18, milestone: 1_788_123_600 }); // August 31, 2026
        segments[24] = getSegment({ amount: 341e18, milestone: 1_790_715_600 }); // September 30, 2026
        segments[25] = getSegment({ amount: 353e18, milestone: 1_793_397_600 }); // October 31, 2026
        segments[26] = getSegment({ amount: 364e18, milestone: 1_795_989_600 }); // November 30, 2026
        segments[27] = getSegment({ amount: 376e18, milestone: 1_798_668_000 }); // December 31, 2026
        segments[28] = getSegment({ amount: 386e18, milestone: 1_801_346_400 }); // January 31, 2027
        segments[29] = getSegment({ amount: 399e18, milestone: 1_803_765_600 }); // February 28, 2027
        segments[30] = getSegment({ amount: 409e18, milestone: 1_806_440_400 }); // March 31, 2027
        segments[31] = getSegment({ amount: 421e18, milestone: 1_809_032_400 }); // April 30, 2027
        segments[32] = getSegment({ amount: 433e18, milestone: 1_811_710_800 }); // May 31, 2027
        segments[33] = getSegment({ amount: 443e18, milestone: 1_814_302_800 }); // June 30, 2027
        segments[34] = getSegment({ amount: 456e18, milestone: 1_816_981_200 }); // July 31, 2027
        segments[35] = getSegment({ amount: 466e18, milestone: 1_819_659_600 }); // August 31, 2027
        segments[36] = getSegment({ amount: 478e18, milestone: 1_822_251_600 }); // September 30, 2027
        return segments;
    }
}
